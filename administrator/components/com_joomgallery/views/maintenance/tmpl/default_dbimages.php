<?php
/****************************************************************************************\
**   JoomGallery 3                                                                      **
**   By: JoomGallery::ProjectTeam                                                       **
**   Copyright (C) 2008 - 2021  JoomGallery::ProjectTeam                                **
**   Based on: JoomGallery 1.0.0 by JoomGallery::ProjectTeam                            **
**   Released under GNU GPL Public License                                              **
**   License: http://www.gnu.org/copyleft/gpl.html or have a look                       **
**   at administrator/components/com_joomgallery/LICENSE.TXT                            **
\****************************************************************************************/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

      if($this->current_tab == 'orphans' || $this->current_tab == 'categories' || $this->current_tab == 'folders'): ?>
  <div class="alert alert-info alert-block">
    <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_MSG_REFRESH_NECESSARY'); ?>
    <script type="text/javascript">
      $$('.cpanel-panel-joom-maintenance-db-images').addEvent('click', function(){
        document.location.href="index.php?option=<?php echo _JOOM_OPTION; ?>&controller=maintenance&tab=images";
      });
    </script>
  </div>
<?php else:
        $listOrder  = $this->escape($this->state->get('list.ordering'));
        $listDirn   = $this->escape($this->state->get('list.direction')); ?>
  <form action="index.php" method="post" id="adminForm" name="adminForm">
    <div id="filter-bar" class="btn-toolbar">
      <div class="filter-search btn-group pull-left">
        <label for="filter_search" class="element-invisible"><?php echo JText::_('COM_JOOMGALLERY_COMMON_SEARCH'); ?></label>
        <input type="text" name="filter_search" placeholder="<?php echo JText::_('COM_JOOMGALLERY_COMMON_SEARCH'); ?>" id="filter_search" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" title="<?php echo JText::_('COM_JOOMGALLERY_COMMON_SEARCH'); ?>" />
      </div>
      <div class="btn-group pull-left hidden-phone">
        <button class="btn hasTooltip" type="submit" title="<?php echo JText::_('COM_JOOMGALLERY_COMMON_SEARCH'); ?>"><i class="icon-search"></i></button>
        <button class="btn hasTooltip" type="button" onclick="document.id('filter_search').value='';this.form.submit();" title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>"><i class="icon-remove"></i></button>
      </div>
      <?php if($this->checked): ?>
      <div class="btn-group pull-right hidden-phone">
        <label for="limit" class="element-invisible"><?php echo JText::_('COM_JOOMGALLERY_COMMON_SEARCH_LIMIT'); ?></label>
        <?php echo $this->pagination->getLimitBox(); ?>
      </div>
      <?php endif; ?>
      <div class="btn-group pull-right">
        <?php echo $this->lists['img_filter']; ?>
      </div>
      <div class="btn-group pull-right">
        <?php echo JHTML::_('joomselect.categorylist', $this->state->get('filter.category'), 'filter_category', 'class="inputbox" size="1" onchange="document.adminForm.submit();"', null, '- ', 'filter'); ?>
      </div>
    </div>
    <div class="clearfix"> </div>

    <table class="table table-striped" id="imageList">
      <thead>
        <tr>
          <th width="1%">
            <input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
          </th>
          <th width="25"></th>
          <th>
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_COMMON_TITLE', 'a.title', $listDirn, $listOrder); ?>
          </th>
          <th width="10%" class="center hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_COMMON_THUMBNAIL', 'a.thumb', $listDirn, $listOrder); ?>
          </th>
          <th width="10%" class="center hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_MAIMAN_DB_DETAIL', 'a.img', $listDirn, $listOrder); ?>
          </th>
          <th width="10%" class="center hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_MAIMAN_DB_ORIGINAL', 'a.orig', $listDirn, $listOrder); ?>
          </th>
          <th width="15%" class="nowrap center hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_COMMON_OWNER', 'user', $listDirn, $listOrder); ?>
          </th>
          <th width="15%" class="hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_COMMON_CATEGORY', 'category', $listDirn, $listOrder); ?>
          </th>
          <th width="1%" class="nowrap hidden-phone">
            <?php echo JHtml::_('grid.sort', 'COM_JOOMGALLERY_COMMON_ID', 'a.id', $listDirn, $listOrder); ?>
          </th>
        </tr>
      </thead>
      <tfoot>
<?php   if($this->checked):
          if($n = count($this->items)): ?>
        <tr>
          <td colspan="9">
            <?php echo $this->pagination->getListFooter(); ?>
          </td>
        </tr>
<?php     endif; ?>
        <tr>
          <td colspan="9">
<?php     if(!$n): ?>
            <div class="alert alert-success">
               <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_MSG_NO_CORRUPT_IMAGES_FOUND'); ?>
            </div>
<?php     endif;
          if($n && $this->state->get('check_originals')): ?>
            <div class="alert alert-info">
                <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_ORIGINALS_NOTE'); ?>
            </div>
<?php     endif; ?>
            <p>
              <button class="btn btn-large btn-primary pull-le" onclick="Joomla.submitform('check');return false;" type="button"><?php echo JText::_('COM_JOOMGALLERY_MAIMAN_CHECK_AGAIN'); ?></button>
              <div class="hasTooltip jg_mntcheckoriinals pull-left well" title="<?php echo JHtml::tooltiptext('COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS', 'COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS_DESC'); ?>">
                <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS'); ?>
                <fieldset class="radio btn-group">
                  <input id="check_originals0" type="radio"<?php echo !$this->state->get('check_originals', 1) ? ' checked="checked"' : ''; ?> value="0" name="check_originals">
                  <label id="check_originals0-lbl" class="radio" for="check_originals0"><?php echo JText::_('JNO'); ?></label>
                  <input id="check_originals1" type="radio"<?php echo $this->state->get('check_originals', 1) ? ' checked="checked"' : ''; ?> value="1" name="check_originals">
                  <label id="check_originals1-lbl" class="radio" for="check_originals1"><?php echo JText::_('JYES'); ?></label>
                </fieldset>
              </div>
              <div class="clearfix"></div>
            </p>
          </td>
        </tr>
<?php   else: ?>
        <tr>
          <td colspan="9">
            <div class="alert alert-info">
              <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_PLEASE_CHECK'); ?>
            </div>
            <p>
              <button class="btn btn-large btn-primary pull-le" onclick="Joomla.submitform('check');return false;" type="button"><?php echo JText::_('COM_JOOMGALLERY_MAIMAN_CHECK'); ?></button>
              <div class="hasTooltip jg_mntcheckoriinals pull-left well" title="<?php echo JHtml::tooltiptext('COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS', 'COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS_DESC'); ?>">
                <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_CHECK_ORIGINALS'); ?>
                <fieldset class="radio btn-group">
                  <input id="check_originals0" type="radio"<?php echo !$this->state->get('check_originals', 1) ? ' checked="checked"' : ''; ?> value="0" name="check_originals">
                  <label id="check_originals0-lbl" class="radio" for="check_originals0"><?php echo JText::_('JNO'); ?></label>
                  <input id="check_originals1" type="radio"<?php echo $this->state->get('check_originals', 1) ? ' checked="checked"' : ''; ?> value="1" name="check_originals">
                  <label id="check_originals1-lbl" class="radio" for="check_originals1"><?php echo JText::_('JYES'); ?></label>
                </fieldset>
              </div>
              <div class="clearfix"></div>
            </p>
            <div class="alert">
              <?php echo JText::_('COM_JOOMGALLERY_MAIMAN_CHECK_NOTE'); ?>
            </div>
          </td>
        </tr>
<?php   endif; ?>
      </tfoot>
      <tbody>
<?php   if($this->checked):
          $k = 0;
          for($i = 0; $i < $n; $i++):
            $row = &$this->items[$i]; ?>
        <tr class="row<?php echo $k; ?>">
          <td>
            <?php echo JHtml::_('grid.id', $i, $row->id); ?>
          </td>
          <td>
<?php       if($row->thumb):
              $link = 'index.php?option='._JOOM_OPTION.'&amp;controller=images&amp;task=edit&amp;cid='.$row->refid; ?>
        <?php echo JHtml::_('joomgallery.minithumbimg', $this->_ambit->getImgObject($row->refid), 'jg_minithumb', 'href="'.$link); ?>
<?php       else: ?>
      &nbsp;
<?php       endif; ?>
          </td>
          <td>
            <a href="index.php?option=<?php echo _JOOM_OPTION; ?>&amp;controller=images&amp;task=edit&amp;cid=<?php echo $row->refid; ?>">
              <?php echo $row->title; ?>
            </a>
          </td>
          <td class="center hidden-phone">
<?php       if($row->thumb): ?>
            <?php echo $this->tick(); ?>
<?php       else: ?>
            <?php echo $this->cross();
                  echo $row->thumborphan ? $this->correct('addorphan', $row->thumborphan, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_ADD_ORPHAN')) : '';
                  if($row->orig):
                    echo $this->correct('recreate', $row->id, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_RECREATE_FROM_ORIG'), false, '&amp;type=thumb');
                  else:
                    if($row->img):
                      echo $this->correct('recreate', $row->id, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_RECREATE_FROM_IMG'));
                    endif;
                  endif; ?>
<?php       endif; ?>
          </td>
          <td class="center hidden-phone">
<?php       if($row->img): ?>
            <?php echo $this->tick(); ?>
<?php       else: ?>
            <?php echo $this->cross();
                  echo $row->imgorphan ? $this->correct('addorphan', $row->imgorphan, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_ADD_ORPHAN')) : '';
                  if($row->orig):
                    echo $this->correct('recreate', $row->id, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_RECREATE_FROM_ORIG'), false, '&amp;type=img');
                  endif; ?>
<?php       endif; ?>
          </td>
          <td class="center hidden-phone">
<?php       if($row->orig): ?>
            <?php echo $this->tick(); ?>
<?php       else: ?>
            <?php echo $this->cross();
                  echo $row->origorphan ? $this->correct('addorphan', $row->origorphan, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_ADD_ORPHAN')) : ''; ?>
<?php       endif; ?>
          </td>
          <td class="center hidden-phone">
<?php       if($row->owner != -1): ?>
            <?php echo JHTML::_('joomgallery.displayname', $row->owner); echo $this->tick(); ?>
<?php       else: ?>
            <?php echo $this->cross(); ?>
            <?php echo $this->correct('newuser', null, JText::_('COM_JOOMGALLERY_MAIMAN_OPTION_SET_NEW_USER'), 'javascript:joom_selectnewuser('.$i.')'); ?>
            <div id="correctuser<?php echo $i; ?>"></div>
<?php       endif; ?>
          </td>
          <td class="hidden-phone">
<?php       if($row->catid != -1): ?>
            <?php echo $row->category/*JHtml::_('joomgallery.categorypath', $row->catid)*/; echo $this->tick(); ?>
<?php       else: ?>
            <?php echo $this->cross(); ?>
<?php       endif; ?>
          </td>
          <td class="hidden-phone">
            <?php echo $row->refid; ?>
          </td>
        </tr>
<?php       $k = 1 - $k;
          endfor;
        endif; ?>
      </tbody>
    </table>
    <div class="accordion-inner">
      <fieldset class="batch">
        <legend><?php echo JText::_('COM_JOOMGALLERY_MAIMAN_BATCH_JOBS'); ?></legend>
        <?php echo $this->lists['img_jobs']; ?>
        <div id="batchjobs"></div>
        <button type="submit" class="btn btn-primary" onclick="if(document.adminForm.task.value == ''){return false;}"><?php echo JText::_('COM_JOOMGALLERY_MAIMAN_APPLY'); ?></button>
      </fieldset>
    </div>
    <div class="hide" id="garage">
      <input type="hidden" name="option" value="<?php echo _JOOM_OPTION; ?>" />
      <input type="hidden" name="controller" value="maintenance" />
      <input type="hidden" name="task" value="" />
      <input type="hidden" name="tab" value="images" />
      <input type="hidden" name="boxchecked" value="0" />
      <input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
      <input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
      <?php echo JHtml::_('form.token'); ?>
      <?php echo JHTML::_('list.users', 'newuser', 0, true, null, 'name', false); ?>
      <a href="#correctUser" id="filesave" class="btn btn-primary btn-mini"><?php echo JText::_('COM_JOOMGALLERY_MAIMAN_APPLY'); ?></a>
      <span id="usertip"> <?php echo JHTML::_('tooltip', JText::_('COM_JOOMGALLERY_MAIMAN_NOTE_USER_FILTER'), JText::_('COM_JOOMGALLERY_MAIMAN_NOTE')); ?></span>
    </div>
</form>
<?php endif;