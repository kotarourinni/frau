<?php
/**
 * JEvents Component for Joomla! 3.x
 *
 * @version     $Id: view.feed.php 3549 2012-04-20 09:26:21Z geraintedwards $
 * @package     JEvents
 * @copyright   Copyright (C) 2008-2022 GWESystems Ltd
 * @license     GNU/GPLv2, see http://www.gnu.org/licenses/gpl-2.0.html
 * @link        http://www.jevents.net
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

use Joomla\CMS\Helper\ModuleHelper;

/**
 * HTML View class for the component frontend
 *
 * @static
 */
//jimport( 'joomla.application.component.view');
//class ModlatestViewModlatest extends JView

include_once(JEV_ADMINPATH . "/views/icalrepeat/view.html.php");

use Joomla\CMS\Factory;
use Joomla\CMS\Uri\Uri;
use Joomla\CMS\Component\ComponentHelper;

class ModlatestViewModlatest extends AdminICalRepeatViewICalRepeat

{

	function rss($tpl = null)
	{

		$input = Factory::getApplication()->input;

		$modid = intval(($input->getInt('modid', 0)));
		if ($modid < 0)
		{
			$modid = 0;
		}

		$cfg = JEVConfig::getInstance();

		$db = Factory::getDbo();

		// setup for all required function and classes
		$file = JPATH_SITE . '/components/com_jevents/mod.defines.php';
		include_once($file);

		// load language constants
		JEVHelper::loadLanguage('modlatest');

		// Check document type
		$doc = Factory::getDocument();
		if ($doc->getType() != 'feed')
		{
			throw new Exception('Fatal error, document type: "' . $doc->getType() . '" not supported.', 403);
		}

		if ($modid > 0)
		{
			$user  = Factory::getUser();
			$query = "SELECT id, params"
				. "\n FROM #__modules AS m"
				. "\n WHERE m.published = 1"
				. "\n AND m.id = " . $modid
				. "\n AND m.access  " . (version_compare(JVERSION, '1.6.0', '>=') ? ' IN (' . JEVHelper::getAid($user, 'string') . ')' : ' <=  ' . JEVHelper::getAid($user))
				. "\n AND m.client_id != 1";
			$db    = Factory::getDbo();
			$db->setQuery($query);
			$modules = $db->loadObjectList();
			if (count($modules) <= 0)
			{
				// fake module parameter
				$params = new JevRegistry('');
			}
			else
			{
				$params = new JevRegistry($modules[0]->params);
			}
		}
		else
		{
			$params = ComponentHelper::getParams(JEV_COM_COMPONENT);
		}

		// parameter intialization
		$info['link']       = str_replace('&', '&amp;', Uri::root(true));
		$info['imagelink']  = str_replace('&', '&amp;', Uri::root());
		$info['base']       = str_replace('&', '&amp;', Uri::root());
		$info['cache']      = $cfg->get('com_rss_cache', 1);
		$info['cache_time'] = $cfg->get('com_rss_cache_time', 3600);
		$info['count']      = $cfg->get('com_rss_count', 5);

		$info['title']       = $cfg->get('com_rss_title', 'Powered by JEvents!');
		$info['description'] = $cfg->get('com_rss_description', 'JEvents Syndication for Joomla');

		// get rss title from module param if requested and defined
		$t_title = $params->get('modlatest_rss_title', null);
		if (($params->get('modlatest_useLocalParam', 0) == 1) && (!empty($t_title)))
		{
			$info['title'] = $t_title;
		}
		// get rss description from module param if requested and defined
		$t_description = $params->get('modlatest_rss_description', null);
		if (($params->get('modlatest_useLocalParam', 0) == 1) && (!empty($t_description)))
		{
			$info['description'] = $t_description;
		}
		$info['image_url'] = htmlspecialchars($cfg->get('com_rss_logo', Uri::root() . 'components/' . JEV_COM_COMPONENT . '/assets/images/JeventsTransparent.png'));
		if ($info['image_url'] == "") $info['image_url'] = htmlspecialchars(Uri::root() . 'components/' . JEV_COM_COMPONENT . '/assets/images/JeventsTransparent.png');
		$info['image_alt'] = $info['title'];

		$info['limit_text']  = $cfg->get('com_rss_limit_text', 1);
		$info['text_length'] = $cfg->get('com_rss_text_length', 20);

		// include the appropriate VIEW - this should be based on config and/or URL?
		$cfg = JEVConfig::getInstance();
		$theme = JEV_CommonFunctions::getJEventsViewName();

		jimport('joomla.application.module.helper');
		if (file_exists(ModuleHelper::getLayoutPath('mod_jevents_latest', $theme . '/' . "latest")))
		{
			$viewclass = ucfirst($theme)."ModLatestView";
			require_once(ModuleHelper::getLayoutPath('mod_jevents_latest', $theme . '/' . "latest"));
			$jeventCalObject = new $viewclass($params, $modid);
		} else {
			$viewclass = ucfirst('default')."ModLatestView";
			require_once(ModuleHelper::getLayoutPath('mod_jevents_latest',  'default/' . "latest"));
			$jeventCalObject = new $viewclass($params, $modid);
		}

		$jeventCalObject->getLatestEventsData($info["count"]);
		$this->set("eventsByRelDay", $jeventCalObject->eventsByRelDay);
		$this->set("info", $info);
		$this->set("modparams", $params);
		$this->set("jeventCalObject", $jeventCalObject);

		$document = Factory::getDocument();

		// No need for CSS files in XML file
		if ($document->getType() == 'feed')
		{
			$document->_styleSheets = array();
			$document->_style       = array();
			$document->_scripts     = array();
			$document->_script      = array();
		}

		parent::displaytemplate($tpl);
	}

}
