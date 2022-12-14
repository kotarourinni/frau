<?php
/**
 * JEvents Component for Joomla 3.0
 *
 * @version     $Id: Category.php 3542 2012-04-20 08:17:05Z geraintedwards $
 * @package     JEvents
 * @copyright   Copyright (C) 2013-2022 GWESystems Ltd
 * @license     GNU/GPLv2, see http://www.gnu.org/licenses/gpl-2.0.html
 * @link        http://www.jevents.net
 */

// ensure this file is being included by a parent file
defined('_JEXEC') or die('Direct Access to this location is not allowed.');

use Joomla\CMS\Language\Text;
use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;

class jevEventlistFilter extends jevFilter
{

	function _createfilterHTML()
	{

		$input = Factory::getApplication()->input;

		// setup for all required function and classes
		$file = JPATH_SITE . '/components/com_jevents/mod.defines.php';
		if (file_exists($file))
		{
			include_once($file);
		}
		$reg             = JevRegistry::getInstanceWithReferences("jevents");
		$this->datamodel = $reg->getReference("jevents.datamodel", false);
		if (!$this->datamodel)
		{
			$this->datamodel = new JEventsDataModel();
			$this->datamodel->setupComponentCatids();
		}

		$filterList          = array();
		$filterList["title"] = Text::_("JEV_SELECT_MATCHING_EVENT");

		$options = array();

		// only if other filters are active to we offer a choice
		if ($input->getInt("eventlist") == 1)
		{
			$options[] = HTMLHelper::_('select.option', "0", Text::_("JEV_SELECT_MATCHING_EVENT"), "value", "text");

			list($year, $month, $day) = JEVHelper::getYMD();
			$tenyear = $year + 10;
			// next 100 matching events
			$events = $this->datamodel->queryModel->listIcalEventsByRange("$year-$month-$day", "$tenyear-$month-$day", 0, 100, false, "rpt.startrepeat asc, rpt.endrepeat ASC, det.summary ASC");
			if ($events && count($events) > 0)
			{
				$Itemid = $this->datamodel->myItemid;
				foreach ($events as $event)
				{
					$link      = $event->viewDetailLink($event->yup(), $event->mup(), $event->dup(), true, $Itemid);
					$options[] = HTMLHelper::_('select.option', $link, $event->title(), "value", "text");
				}
			}
		}
		else
		{
			$options[] = HTMLHelper::_('select.option', "0", Text::_("JEV_NO_MATCHING_EVENTS"), "value", "text");
		}
		$filterList["html"] = HTMLHelper::_('select.genericlist', $options, 'eventlist_fv', 'class="inputbox" size="1" onchange="document.location.replace(this.value);"', 'value', 'text', 0);
		$filterList["html"] .= "<input type='hidden' name='eventlist' id='eventlistid' value='1'  />";

		$script = "function resetEventlist(){document.getElementById('eventlistid').value=0;}\n";
		$script .= "try {JeventsFilters.filters.push({action:'resetEventlist()',id:'eventlist_fv',value:0});} catch (e) {}\n";

		$document = Factory::getDocument();
		$document->addScriptDeclaration($script);

		return $filterList;

	}

}
