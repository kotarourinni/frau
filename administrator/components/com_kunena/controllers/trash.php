<?php
/**
 * Kunena Component
 *
 * @package         Kunena.Administrator
 * @subpackage      Controllers
 *
 * @copyright       Copyright (C) 2008 - 2022 Kunena Team. All rights reserved.
 * @license         https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link            https://www.kunena.org
 **/
defined('_JEXEC') or die();

use Joomla\CMS\Language\Text;
use Joomla\CMS\Session\Session;
use Joomla\Utilities\ArrayHelper;

/**
 * Kunena Trash Controller
 *
 * @since  2.0
 */
class KunenaAdminControllerTrash extends KunenaController
{
	/**
	 * @var null|string
	 * @since Kunena
	 */
	protected $baseurl = null;

	/**
	 * Construct
	 *
	 * @param   array $config config
	 *
	 * @throws Exception
	 * @since    2.0
	 */
	public function __construct($config = array())
	{
		parent::__construct($config);
		$this->baseurl = 'administrator/index.php?option=com_kunena&view=trash';
	}

	/**
	 * Purge
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @throws null
	 * @since    2.0
	 */
	public function purge()
	{
		if (!Session::checkToken('post'))
		{
			$this->app->enqueueMessage(Text::_('COM_KUNENA_ERROR_TOKEN'), 'error');
			$this->setRedirect(KunenaRoute::_($this->baseurl, false));

			return;
		}

		$cid = $this->app->input->get('cid', array(), 'post', 'array');
		$cid = ArrayHelper::toInteger($cid);

		$type = $this->app->input->getCmd('type', 'topics', 'post');
		$md5  = $this->app->input->getString('md5', null);

		if (!empty($cid))
		{
			$this->app->setUserState('com_kunena.purge', $cid);
			$this->app->setUserState('com_kunena.type', $type);
		}
		elseif ($md5)
		{
			$ids  = (array) $this->app->getUserState('com_kunena.purge');
			$type = (string) $this->app->getUserState('com_kunena.type');

			if ($md5 == md5(serialize($ids)))
			{
				if ($type == 'topics')
				{
					$topics = KunenaForumTopicHelper::getTopics($ids, 'none');

					foreach ($topics as $topic)
					{
						$success = $topic->delete();

						if (!$success)
						{
							$this->app->enqueueMessage($topic->getError());
						}
					}

					if ($success)
					{
						KunenaForumTopicHelper::recount($ids);
						KunenaForumCategoryHelper::recount($topic->getCategory()->id);
						$this->app->enqueueMessage(Text::_('COM_KUNENA_TRASH_DELETE_TOPICS_DONE'));
					}
				}
				elseif ($type == 'messages')
				{
					$messages = KunenaForumMessageHelper::getMessages($ids, 'none');

					foreach ($messages as $message)
					{
						$success = $message->delete();
						$target  = KunenaForumMessageHelper::get($message->id);
						$topic   = KunenaForumTopicHelper::get($target->getTopic());

						if ($topic->attachments > 0)
						{
							$topic->attachments = $topic->attachments - 1;
							$topic->save(false);
						}

						if (!$success)
						{
							$this->app->enqueueMessage($message->getError());
						}
					}

					if ($success)
					{
						KunenaForumTopicHelper::recount($ids);
						KunenaForumCategoryHelper::recount($topic->getCategory()->id);
						$this->app->enqueueMessage(Text::_('COM_KUNENA_TRASH_DELETE_MESSAGES_DONE'));
					}
				}
			}
			else
			{
				// Error...
			}

			$this->app->setUserState('com_kunena.purge', null);
			$this->app->setUserState('com_kunena.type', null);

			if ($type == 'messages')
			{
				$this->setRedirect(KunenaRoute::_($this->baseurl . "&layout=messages", false));
			}
			else
			{
				$this->setRedirect(KunenaRoute::_($this->baseurl, false));
			}

			return;
		}
		else
		{
			$this->app->enqueueMessage(Text::_('COM_KUNENA_A_NO_MESSAGES_SELECTED'), 'notice');
			$this->setRedirect(KunenaRoute::_($this->baseurl, false));

			return;
		}

		$this->setRedirect(KunenaRoute::_($this->baseurl . "&layout=purge", false));
	}

	/**
	 * Restore
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @throws null
	 * @since    2.0
	 */
	public function restore()
	{
		if (!Session::checkToken('post'))
		{
			$this->app->enqueueMessage(Text::_('COM_KUNENA_ERROR_TOKEN'), 'error');
			$this->setRedirect(KunenaRoute::_($this->baseurl, false));

			return;
		}

		$cid = $this->app->input->get('cid', array(), 'post', 'array');
		$cid = ArrayHelper::toInteger($cid);

		$type = $this->app->input->getCmd('type', 'topics', 'post');

		if (empty($cid))
		{
			$this->app->enqueueMessage(Text::_('COM_KUNENA_A_NO_MESSAGES_SELECTED'), 'notice');
			$this->setRedirect(KunenaRoute::_($this->baseurl, false));

			return;
		}

		$nb_items = 0;

		if ($type == 'messages')
		{
			$messages = KunenaForumMessageHelper::getMessages($cid, 'none');

			foreach ($messages as $target)
			{
				if ($target->publish(KunenaForum::PUBLISHED))
				{
					$nb_items++;
				}
				else
				{
					$this->app->enqueueMessage($target->getError(), 'notice');
				}
			}
		}
		elseif ($type == 'topics')
		{
			$topics = KunenaForumTopicHelper::getTopics($cid, 'none');

			foreach ($topics as $target)
			{
				if ($target->getState() == KunenaForum::UNAPPROVED)
				{
					$status = KunenaForum::UNAPPROVED;
				}
				else
				{
					$status = KunenaForum::PUBLISHED;
				}

				if ($target->publish($status))
				{
					$nb_items++;
				}
				else
				{
					$this->app->enqueueMessage($target->getError(), 'notice');
				}
			}
		}
		else
		{
			// Error...
		}

		if ($nb_items > 0)
		{
			$this->app->enqueueMessage(Text::sprintf('COM_KUNENA_TRASH_ITEMS_RESTORE_DONE', $nb_items));
		}

		KunenaUserHelper::recount();
		KunenaForumTopicHelper::recount();
		KunenaForumCategoryHelper::recount();

		$this->setRedirect(KunenaRoute::_($this->baseurl, false));
	}

	/**
	 * Method to redirect user on cancel on purge page
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since    2.0
	 * @throws null
	 */
	public function cancel()
	{
		$type = $this->app->getUserState('com_kunena.type');

		if ($type == 'messages')
		{
			$this->setRedirect(KunenaRoute::_($this->baseurl . "&layout=messages", false));
		}
		else
		{
			$this->setRedirect(KunenaRoute::_($this->baseurl, false));
		}
	}
}
