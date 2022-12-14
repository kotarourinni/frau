<?php
/**
 * JEvents Component for Joomla! 3.x
 *
 * @version     $Id: edit.php 2749 2011-10-13 08:54:34Z geraintedwards $
 * @package     JEvents
 * @copyright   Copyright (C)  2008-2022 GWESystems Ltd
 * @license     GNU/GPLv2, see http://www.gnu.org/licenses/gpl-2.0.html
 * @link        http://www.jevents.net
 */
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use Joomla\CMS\HTML\HTMLHelper;

global $task;
$option = JEV_COM_COMPONENT;
$index  = Route::_("index.php");
?>
<script type="text/javascript">
    <!--
    Joomla.submitbutton = function (pressbutton) {
        if (pressbutton.substr(0, 6) == 'cancel' || (pressbutton == 'user.overview')) {
            Joomla.submitform(pressbutton);
            return;
        }
        var form = document.adminForm;
        // do field validation
        if (form.user_id.value == -1) {
            alert("<?php echo Text::_('MISSING_USER_SELECTION'); ?>");
        }
        else {
            Joomla.submitform(pressbutton);
        }
    }
    //-->
</script>

<form action="<?php echo $index; ?>" method="post" name="adminForm" id="adminForm">
	<input type="hidden" name="cid" value="<?php echo $this->jevuser->id; ?>"/>
	<table border="0" cellpadding="2" cellspacing="2" class="adminform">
		<tr>
			<td width="20%"><?php echo Text::_('USERNAME'); ?></td>
			<td><?php echo $this->users; ?></td>
		</tr>
		<tr>
			<td><?php echo Text::_('USER_ENABLED'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "published", null, $this->jevuser->published);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_CREATE_EVENTS'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "cancreate", null, $this->jevuser->cancreate);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('EVENTS_LIMIT'); ?></td>
			<td>
				<input type="text" size="15" name="eventslimit" id="eventslimit"
				       value="<?php echo $this->jevuser->eventslimit; ?>"/>
			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_PUBLISH_OWN'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "canpublishown", null, $this->jevuser->canpublishown);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_DELETE_OWN_EVENTS'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "candeleteown", null, $this->jevuser->candeleteown);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_EDIT_EVENTS'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "canedit", null, $this->jevuser->canedit);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_PUBLISH_ALL'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "canpublishall", null, $this->jevuser->canpublishall);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_DELETE_ALL_EVENTS'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "candeleteall", null, $this->jevuser->candeleteall);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('CAN_UPLOAD_IMAGES'); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "canuploadimages", null, $this->jevuser->canuploadimages);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_("UPLOAD_FILES"); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "canuploadmovies", null, $this->jevuser->canuploadmovies);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_("CREATE_OWN_EXTRAS"); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "cancreateown", null, $this->jevuser->cancreateown);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_("CREATE_GLOBAL_EXTRAS"); ?></td>
			<td>

				<?php
				echo HTMLHelper::_("select.booleanlist", "cancreateglobal", null, $this->jevuser->cancreateglobal);
				?>

			</td>
		</tr>
		<tr>
			<td><?php echo Text::_('EXTRAS_LIMIT'); ?></td>
			<td>
				<input type="text" size="15" name="extraslimit" id="extraslimit"
				       value="<?php echo $this->jevuser->extraslimit; ?>"/>
			</td>
		</tr>

	</table>
	<script type="text/javascript">
        function allselections(id) {
            var e = document.getElementById(id);
            e.disabled = true;
            var i = 0;
            var n = e.options.length;
            for (i = 0; i < n; i++) {
                e.options[i].disabled = true;
                e.options[i].selected = true;
            }
        }

        function enableselections(id) {
            var e = document.getElementById(id);
            e.disabled = false;
            var i = 0;
            var n = e.options.length;
            for (i = 0; i < n; i++) {
                e.options[i].disabled = false;
            }
        }
	</script>
	<table class="admintable">
		<tr>
			<td width="50%">
				<fieldset class="adminform useradminform">
					<legend><?php echo Text::_('JEV_APPLICABLE_CATEGORIES'); ?></legend>
					<table class="admintable" cellspacing="1">
						<tr>
							<td valign="top" class="key"><?php echo Text::_('JEV_Categories'); ?>:</td>
							<td><?php if ($this->jevuser->categories == 'all' || $this->jevuser->categories == '') { ?>
									<label for="categories-all">
										<input id="categories-all" type="radio" name="categories" value="all"
										       onclick="allselections('categories');" checked="checked"/>
										<?php echo Text::_('JEV_All'); ?></label>
									<label for="categories-select">
										<input id="categories-select" type="radio" name="categories" value="select"
										       onclick="enableselections('categories');"/>
										<?php echo Text::_('JEV_Select_From_List'); ?></label>
								<?php }
								else
								{ ?>
									<label for="categories-all">
										<input id="categories-all" type="radio" name="categories" value="all"
										       onclick="allselections('categories');"/>
										<?php echo Text::_('JEV_All'); ?></label>
									<label for="categories-select">
										<input id="categories-select" type="radio" name="categories" value="select"
										       onclick="enableselections('categories');" checked="checked"/>
										<?php echo Text::_('JEV_Select_From_List'); ?></label>
								<?php } ?></td>
						</tr>
						<tr>
							<td class="paramlist_key" width="40%"><span class="editlinktip">
					      <label for="categories"
					             id="categories-lbl"><?php echo Text::_('JEV_Categories_selection'); ?></label>
					      </span></td>
							<td><?php echo $this->lists['categories']; ?></td>
						</tr>
					</table>
					<?php if ($this->jevuser->categories == 'all' || $this->jevuser->categories == '') { ?>
						<script type="text/javascript">allselections('categories');</script>
					<?php } ?>

			</td>
			<td width="50%">

				<fieldset class="adminform">
					<legend><?php echo Text::_('JEV_APPLICABLE_CALENDARS'); ?></legend>
					<table class="admintable" cellspacing="1">
						<tr>
							<td valign="top" class="key"><?php echo Text::_('JEV_Calendars'); ?>:</td>
							<td><?php if ($this->jevuser->calendars == 'all' || $this->jevuser->calendars == '') { ?>
									<label for="calendars-all">
										<input id="calendars-all" type="radio" name="calendars" value="all"
										       onclick="allselections('calendars');" checked="checked"/>
										<?php echo Text::_('JEV_All'); ?></label>
									<label for="calendars-select">
										<input id="calendars-select" type="radio" name="calendars" value="select"
										       onclick="enableselections('calendars');"/>
										<?php echo Text::_('JEV_Select_From_List'); ?></label>
								<?php }
								else
								{ ?>
									<label for="calendars-all">
										<input id="calendars-all" type="radio" name="calendars" value="all"
										       onclick="allselections('calendars');"/>
										<?php echo Text::_('JEV_All'); ?></label>
									<label for="calendars-select">
										<input id="calendars-select" type="radio" name="calendars" value="select"
										       onclick="enableselections('calendars');" checked="checked"/>
										<?php echo Text::_('JEV_Select_From_List'); ?></label>
								<?php } ?></td>
						</tr>
						<tr>
							<td class="paramlist_key" width="40%"><span class="editlinktip">
					      <label for="calendars"
					             id="calendars-lbl"><?php echo Text::_('JEV_Calendars_selection'); ?></label>
					      </span></td>
							<td><?php echo $this->lists['calendars']; ?></td>
						</tr>
					</table>
					<?php if ($this->jevuser->calendars == 'all' || $this->jevuser->calendars == '') { ?>
						<script type="text/javascript">allselections('calendars');</script>
					<?php } ?>

			</td>
		</tr>
	</table>

	<input type="hidden" name="hidemainmenu" value=""/>
	<input type="hidden" name="task" value="<?php echo $task; ?>"/>
	<input type="hidden" name="option" value="<?php echo $option; ?>"/>
	<?php echo HTMLHelper::_('form.token'); ?>
</form>
