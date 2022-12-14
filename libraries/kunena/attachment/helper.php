<?php
/**
 * Kunena Component
 * @package       Kunena.Framework
 * @subpackage    Attachment
 *
 * @copyright     Copyright (C) 2008 - 2022 Kunena Team. All rights reserved.
 * @license       https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link          https://www.kunena.org
 **/
defined('_JEXEC') or die();

use Joomla\CMS\Factory;

/**
 * Kunena Attachment Helper Class
 * @since Kunena
 */
abstract class KunenaAttachmentHelper
{
	/**
	 * @var KunenaAttachment[]
	 * @since Kunena
	 */
	protected static $_instances = array();

	/**
	 * @var array
	 * @since Kunena
	 */
	protected static $_messages = array();

	/**
	 * Returns KunenaAttachment object.
	 *
	 * @param   int  $identifier The attachment to load - Can be only an integer.
	 * @param   bool $reload     reloaded
	 *
	 * @return KunenaAttachment
	 * @since Kunena
	 */
	public static function get($identifier = null, $reload = false)
	{
		if ($identifier instanceof KunenaAttachment)
		{
			return $identifier;
		}

		$id = (int) $identifier;

		if ($id < 1)
		{
			return new KunenaAttachment;
		}

		if (empty(self::$_instances[$id]))
		{
			$instance = new KunenaAttachment;

			// Only load messages which haven't been preloaded before (including missing ones).
			$instance->load(!array_key_exists($id, self::$_instances) ? $id : null);
			$instance->id          = $id;
			self::$_instances[$id] = $instance;
		}
		elseif ($reload)
		{
			self::$_instances[$id]->load();
		}

		return self::$_instances[$id];
	}

	/**
	 * @param   bool|array|int $ids       ids
	 * @param   string         $authorise authorise
	 *
	 * @return KunenaAttachment[]
	 * @throws Exception
	 * @since Kunena
	 * @throws null
	 */
	public static function getById($ids = false, $authorise = 'read')
	{
		if ($ids === false)
		{
			return self::$_instances;
		}
		elseif (is_array($ids))
		{
			$ids = array_unique($ids);
		}
		else
		{
			$ids = array($ids);
		}

		if (empty($ids))
		{
			return array();
		}

		self::loadById($ids);

		$list = array();

		foreach ($ids as $id)
		{
			if (!empty(self::$_instances [$id]) && self::$_instances [$id]->isAuthorised($authorise))
			{
				$list [$id] = self::$_instances [$id];
			}
		}

		return $list;
	}

	/**
	 * @param   array $ids ids
	 *
	 * @throws Exception
	 * @since Kunena
	 * @return void
	 */
	protected static function loadById(array $ids)
	{
		foreach ($ids as $i => $id)
		{
			if (isset(self::$_instances [$id]))
			{
				unset($ids[$i]);
			}
		}

		if (empty($ids))
		{
			return;
		}

		$idlist = implode(',', $ids);
		$db     = Factory::getDBO();
		$query  = "SELECT * FROM #__kunena_attachments WHERE id IN ({$idlist})";
		$db->setQuery($query);

		try
		{
			$results = (array) $db->loadObjectList('id', 'KunenaAttachment');
		}
		catch (RuntimeException $e)
		{
			KunenaError::displayDatabaseError($e);
		}

		foreach ($ids as $id)
		{
			if (isset($results[$id]))
			{
				$instance                               = $results[$id];
				self::$_instances[$id]                  = $instance;
				self::$_messages[$instance->mesid][$id] = $instance;
			}
			else
			{
				self::$_instances[$id] = null;
			}
		}

		unset($results);
	}

	/**
	 * Get the number of the attachments in the message
	 *
	 * @param   bool|string $ids ids
	 *
	 * @return KunenaAttachment[]
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getNumberAttachments($ids = false)
	{
		$ids = array($ids);

		self::loadByMessage($ids);

		$list = array();

		foreach ($ids as $id)
		{
			if (!empty(self::$_messages [$id]))
			{
				$list = self::$_messages [$id];
			}
		}

		return $list;
	}

	/**
	 * @param   array $ids ids
	 *
	 * @throws Exception
	 * @since Kunena
	 * @return void
	 */
	protected static function loadByMessage(array $ids)
	{
		foreach ($ids as $i => $id)
		{
			$id = intval($id);

			if (!$id || isset(self::$_messages [$id]))
			{
				unset($ids[$i]);
			}
		}

		if (empty($ids))
		{
			return;
		}

		$idlist = implode(',', $ids);
		$db     = Factory::getDBO();
		$query  = "SELECT * FROM #__kunena_attachments WHERE mesid IN ({$idlist})";
		$db->setQuery($query);

		try
		{
			$results = (array) $db->loadObjectList('id', 'KunenaAttachment');
		}
		catch (RuntimeException $e)
		{
			KunenaError::displayDatabaseError($e);
		}

		foreach ($ids as $mesid)
		{
			if (!isset(self::$_messages [$mesid]))
			{
				self::$_messages [$mesid] = array();
			}
		}

		foreach ($results as $id => $instance)
		{
			self::$_instances [$id]                  = $instance;
			self::$_messages [$instance->mesid][$id] = $instance;
		}

		unset($results);
	}

	/**
	 * @param   bool|array|int $ids       ids
	 * @param   string         $authorise authorise
	 *
	 * @return KunenaAttachment[]
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getByMessage($ids = false, $authorise = 'read')
	{
		if ($ids === false)
		{
			return self::$_instances;
		}
		elseif (is_array($ids))
		{
			$ids2 = array();

			foreach ($ids as $id)
			{
				if ($id instanceof KunenaForumMessage)
				{
					$id = $id->id;
				}

				$ids2[(int) $id] = (int) $id;
			}

			$ids = $ids2;
		}
		else
		{
			$ids = array($ids);
		}

		if (empty($ids))
		{
			return array();
		}

		self::loadByMessage($ids);

		$list = array();

		foreach ($ids as $id)
		{
			if (!empty(self::$_messages [$id]))
			{
				foreach (self::$_messages [$id] as $instance)
				{
					// @var KunenaAttachment $instance

					if ($instance->isAuthorised($authorise))
					{
						$list [$instance->id] = $instance;
					}
				}
			}
		}

		return $list;
	}

	/**
	 * Find filename which isn't already taken in the filesystem.
	 *
	 * @param   string $folder    Relative path from JPATH_ROOT.
	 * @param   string $basename  Filename without extension.
	 * @param   string $extension File extension.
	 * @param   bool   $protected True to randomize the filename. If not given, uses Kunena configuration setting.
	 *
	 * @return string
	 *
	 * @throws Exception
	 * @since  K4.0
	 */
	public static function getAvailableFilename($folder, $basename, $extension, $protected = null)
	{
		if (is_null($protected))
		{
			$protected = (bool) KunenaConfig::getInstance()->attachment_protection;
		}

		if ($protected)
		{
			// Ignore proposed filename and return totally random and unique name without file extension.
			do
			{
				$name = md5(rand());
			}
			while (file_exists(JPATH_ROOT . "/$folder/$name"));

			return $name;
		}

		// Lets find out if we need to rename the filename.
		$basename  = preg_replace('/[[:space:]]/', '', KunenaFile::makeSafe($basename));
		$extension = trim($extension, '.');

		if (empty($basename))
		{
			$basename = 'file_' . substr(md5(rand()), 2, 7);
		}

		$newName = "{$basename}.{$extension}";
		$date    = date('Y-m-d');

		// Rename file if there is already one with the same name
		if (file_exists(JPATH_ROOT . "/{$folder}/{$newName}"))
		{
			$newName = "{$basename}_{$date}.{$extension}";

			for ($i = 2; file_exists(JPATH_ROOT . "/{$folder}/{$newName}"); $i++)
			{
				$newName = "{$basename}_{$date}-{$i}.{$extension}";
			}
		}

		return $newName;
	}

	/**
	 * @param   mixed $category category
	 * @param   null  $user     user
	 *
	 * @return array|boolean
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getExtensions($category, $user = null)
	{
		$imagetypes = self::getImageExtensions($category, $user);
		$filetypes  = self::getFileExtensions($category, $user);

		if ($imagetypes === false && $filetypes === false)
		{
			return false;
		}

		return (array) array_merge((array) $imagetypes, (array) $filetypes);
	}

	/**
	 * @param   mixed $category category
	 * @param   mixed $user     user
	 *
	 * @return array|boolean
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getImageExtensions($category = null, $user = null)
	{
		if ($category !== null)
		{
			$category = KunenaForumCategoryHelper::get($category);
		}

		$user   = KunenaUserHelper::get($user);
		$config = KunenaFactory::getConfig();
		$types  = explode(',', $config->imagetypes);

		foreach ($types as &$type)
		{
			$type = trim($type);

			if (empty($type))
			{
				unset($type);
			}
		}

		// Check if attachments are allowed at all
		if (!$config->image_upload)
		{
			return false;
		}

		if ($config->image_upload == 'everybody')
		{
			return $types;
		}

		// For now on we only allow registered users
		if (!$user->exists())
		{
			return false;
		}

		if ($config->image_upload == 'registered')
		{
			return $types;
		}

		// For now on we only allow moderators
		if (!$user->isModerator($category))
		{
			return false;
		}

		if ($config->image_upload == 'moderator')
		{
			return $types;
		}

		// For now on we only allow administrators
		if (!$user->isAdmin($category))
		{
			return false;
		}

		if ($config->image_upload == 'admin')
		{
			return $types;
		}

		return false;
	}

	/**
	 * @param   mixed $category category
	 * @param   mixed $user     user
	 *
	 * @return array|boolean
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getFileExtensions($category = null, $user = null)
	{
		$category = KunenaForumCategoryHelper::get($category);
		$user     = KunenaUserHelper::get($user);
		$config   = KunenaFactory::getConfig();
		$types    = explode(',', $config->filetypes);

		foreach ($types as &$type)
		{
			$type = trim($type);

			if (empty($type))
			{
				unset($type);
			}
		}

		// Check if attachments are allowed at all
		if (!$config->file_upload)
		{
			return false;
		}

		if ($config->file_upload == 'everybody')
		{
			return $types;
		}

		// For now on we only allow registered users
		if (!$user->exists())
		{
			return false;
		}

		if ($config->file_upload == 'registered')
		{
			return $types;
		}

		// For now on we only allow moderators
		if (!$user->isModerator($category))
		{
			return false;
		}

		if ($config->file_upload == 'moderator')
		{
			return $types;
		}

		// For now on we only allow administrators
		if (!$user->isAdmin($category))
		{
			return false;
		}

		if ($config->file_upload == 'admin')
		{
			return $types;
		}

		return false;
	}

	/**
	 * @return boolean
	 * @throws Exception
	 * @since Kunena
	 */
	public static function cleanup()
	{
		$db = Factory::getDBO();

		// Find up to 50 orphan attachments and delete them
		$query = "SELECT a.* FROM #__kunena_attachments AS a LEFT JOIN #__kunena_messages AS m ON a.mesid=m.id WHERE m.id IS NULL";
		$db->setQuery($query, 0, 50);

		try
		{
			$results = (array) $db->loadObjectList('id', 'KunenaAttachment');
		}
		catch (JDatabaseExceptionExecuting $e)
		{
			KunenaError::displayDatabaseError($e);

			return false;
		}

		if (empty($results))
		{
			return true;
		}

		foreach ($results as $instance)
		{
			$instance->exists(false);
			unset($instance);
		}

		$ids = implode(',', array_keys($results));
		unset($results);
		$query = "DELETE FROM #__kunena_attachments WHERE id IN ($ids)";
		$db->setQuery($query);

		try
		{
			$db->execute();
		}
		catch (JDatabaseExceptionExecuting $e)
		{
			KunenaError::displayDatabaseError($e);

			return false;
		}
	}

	/**
	 * This function shortens long file names for display purposes.
	 * The first 8 characters of the filename, followed by three dots
	 * and the last 5 character of the filename.
	 *
	 * @param   string $filename Filename to be shortened.
	 * @param   int    $front    front
	 * @param   int    $back     back
	 * @param   string $filler   filler
	 *
	 * @return string
	 * @since Kunena
	 */
	public static function shortenFilename($filename, $front = 10, $back = 8, $filler = '...')
	{
		$len = mb_strlen($filename);

		if ($len > ($front + strlen($filler) + $back))
		{
			$output = substr($filename, 0, $front) . $filler . substr($filename, $len - $back, $back);
		}
		else
		{
			$output = $filename;
		}

		return $output;
	}

	/**
	 * @param   mixed $user   user
	 * @param   array $params params
	 *
	 * @return KunenaAttachment[]
	 * @throws Exception
	 * @since Kunena
	 */
	public static function getByUserid($user, array $params)
	{
		if ($params['file'] == '1' && $params['image'] != '1')
		{
			$filetype = " AND filetype=''";
		}
		elseif ($params['image'] == '1' && $params['file'] != '1')
		{
			$filetype = " AND filetype!=''";
		}
		elseif ($params['file'] == '1' && $params['image'] == '1')
		{
			$filetype = '';
		}
		else
		{
			return array();
		}

		if ($params['orderby'] == 'desc')
		{
			$orderby = ' ORDER BY id DESC';
		}
		else
		{
			$orderby = ' ORDER BY id ASC';
		}

		$db    = Factory::getDBO();
		$query = "SELECT * FROM #__kunena_attachments WHERE userid='{$user->userid}' $filetype $orderby";
		$db->setQuery($query, 0, $params['limit']);

		try
		{
			$results = $db->loadObjectList('id', 'KunenaAttachment');
		}
		catch (RuntimeException $e)
		{
			KunenaError::displayDatabaseError($e);
		}

		$list = array();

		foreach ($results as $instance)
		{
			if (!isset(self::$_instances[$instance->id]))
			{
				self::$_instances [$instance->id]                  = $instance;
				self::$_messages [$instance->mesid][$instance->id] = $instance;
			}

			$list[] = self::$_instances[$instance->id];
		}

		return $list;
	}

	/**
	 * Load the total count of attachments
	 *
	 * @return boolean
	 * @throws Exception
	 * @since K5.1
	 */
	public static function getTotalAttachments()
	{
		$attachments = null;

		$db    = Factory::getDBO();
		$query = $db->getQuery(true);
		$query
			->select('COUNT(*)')
			->from($db->quoteName('#__kunena_attachments'));
		$db->setQuery($query);

		try
		{
			$attachments = $db->loadResult();
		}
		catch (RuntimeException $e)
		{
			KunenaError::displayDatabaseError($e);
		}

		return $attachments;
	}

	/**
	 * Check if mime type is image.
	 *
	 * @param   string $mime mime
	 *
	 * @return  boolean  True if mime is image.
	 * @since Kunena
	 */
	public function isImageMime($mime)
	{
		return stripos($mime, 'image/') !== false;
	}
}
