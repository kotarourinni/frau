<?php
/**
 * Kunena Component
 *
 * @package         Kunena.Administrator
 * @subpackage      Models
 *
 * @copyright       Copyright (C) 2008 - 2022 Kunena Team. All rights reserved.
 * @license         https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link            https://www.kunena.org
 **/
defined('_JEXEC') or die();

use Joomla\CMS\Factory;

jimport('joomla.application.component.modellist');

/**
 * Smileys Model for Kunena
 *
 * @since  3.0
 */
class KunenaAdminModelSmilies extends \Joomla\CMS\MVC\Model\ListModel
{
	/**
	 * @param   array $config config
	 *
	 * @since Kunena
	 */
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id',
				'code',
				'location',
				'greylocation',
				'emoticonbar',
			);
		}

		parent::__construct($config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * @param   string $ordering  ordering
	 * @param   string $direction direction
	 *
	 * @return    void
	 * @throws Exception
	 * @since Kunena
	 */
	protected function populateState($ordering = null, $direction = null)
	{
		$this->context = 'com_kunena.admin.smilies';

		$app = Factory::getApplication();

		// Adjust the context to support modal layouts.
		$layout        = $app->input->get('layout');
		$this->context = 'com_kunena.admin.smilies';

		if ($layout)
		{
			$this->context .= '.' . $layout;
		}

		$filter_active = '';

		$filter_active .= $value = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search', '', 'string');
		$this->setState('filter.search', $value);

		$filter_active .= $value = $this->getUserStateFromRequest($this->context . '.filter.code', 'filter_code', '', 'string');
		$this->setState('filter.code', $value !== '' ? $value : null);

		$filter_active .= $value = $this->getUserStateFromRequest($this->context . '.filter.location', 'filter_location', '', 'string');
		$this->setState('filter.location', $value !== '' ? $value : null);

		$this->setState('filter.active', !empty($filter_active));

		// List state information.
		parent::populateState('id', 'asc');
	}

	/**
	 * @param   string $id id
	 *
	 * @return string
	 * @since Kunena
	 */
	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id .= ':' . $this->getState('filter.code');
		$id .= ':' . $this->getState('filter.url');

		return parent::getStoreId($id);
	}

	/**
	 * @return JDatabaseQuery
	 * @since Kunena
	 */
	protected function getListQuery()
	{
		$db    = $this->getDbo();
		$query = $db->getQuery(true);

		$query->select(
			$this->getState(
				'list.select',
				'a.id, a.code, a.location, a.greylocation, a.emoticonbar'
			)
		);

		$query->from('#__kunena_smileys AS a');

		$filter = $this->getState('filter.code');

		if (!empty($filter))
		{
			$code = $db->Quote('%' . $db->escape($filter, true) . '%');
			$query->where('(a.code LIKE ' . $code . ')');
		}

		$filter = $this->getState('filter.location');

		if (!empty($filter))
		{
			$location = $db->Quote('%' . $db->escape($filter, true) . '%');
			$query->where('(a.location LIKE ' . $location . ')');
		}

		// Add the list ordering clause.
		$direction = strtoupper($this->state->get('list.direction'));

		switch ($this->state->get('list.ordering'))
		{
			case 'code':
				$query->order('a.code ' . $direction);
				break;
			case 'location':
				$query->order('a.location ' . $direction);
				break;
			case 'greylocation':
				$query->order('a.greylocation ' . $direction);
				break;
			case 'emoticonbar':
				$query->order('a.emoticonbar ' . $direction);
				break;
			default:
				$query->order('a.id ' . $direction);
		}

		$db->setQuery($query);

		return $query;
	}
}
