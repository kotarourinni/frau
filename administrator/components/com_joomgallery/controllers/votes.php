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

/**
 * JoomGallery Votes Controller
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryControllerVotes extends JoomGalleryController
{
  /**
   * Resets all votes of all images in the gallery
   *
   * @return  void
   * @since   1.5.5
   */
  public function reset()
  {
    // Check whether we are allowed to delete
    $canDo = JoomHelper::getActions();
    if(!$canDo->get('core.delete'))
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), JText::_('JLIB_RULES_NOT_ALLOWED'), 'error');

      return false;
    }

    $this->_db->truncateTable(_JOOM_TABLE_VOTES);

    if($this->_db->getErrorMsg())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    $query = $this->_db->getQuery(true)
          ->update(_JOOM_TABLE_IMAGES)
          ->set('imgvotes = 0')
          ->set('imgvotesum = 0');
    $this->_db->setQuery($query);

    if(!$this->_db->query())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), JText::_('COM_JOOMGALLERY_MAIMAN_MSG_ALL_VOTES_DELETED'));
  }

  /**
   * Synchronizes the votes with users registered and exiting images.
   *
   * Votes of users that aren't registed any more will be deleted.
   *
   * @return  void
   * @since   1.5.5
   */
  public function synchronize()
  {
    // Synchronize users-votes-images
    $query = $this->_db->getQuery(true)
          ->delete('v USING '._JOOM_TABLE_VOTES.' AS v')
          ->leftJoin('#__users AS u ON v.userid = u.id')
          ->leftJoin(_JOOM_TABLE_IMAGES.' AS i ON v.picid  = i.id')
          ->where('v.userid != 0')
          ->where('(u.id IS NULL OR i.id IS NULL)');
    $this->_db->setQuery($query);

    if(!$this->_db->query())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), $this->_db->getErrorMsg(), 'error');
      return;
    }

    $count_subquery = $this->_db->getQuery(true)
                    ->select('COUNT(*)')
                    ->from(_JOOM_TABLE_VOTES.' as v')
                    ->where('v.picid = p.id');

    $sum_subquery = $this->_db->getQuery(true)
                  ->select('SUM(v.vote)')
                  ->from(_JOOM_TABLE_VOTES.' as v')
                  ->where('v.picid = p.id');

    $query->clear()
          ->update(_JOOM_TABLE_IMAGES.' AS p')
          ->set('p.imgvotes    = ('.$count_subquery.')')
          ->set('p.imgvotesum  = ('.$sum_subquery.')');
    $this->_db->setQuery($query);

    if(!$this->_db->query())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), JText::_('COM_JOOMGALLERY_MAIMAN_MSG_USERVOTES_SYNCHRONIZED'));
  }

  /**
   * Deletes the stored IP addresses of all votes.
   *
   * @return  void
   * @since   3.4
   */
  public function deleteip()
  {
    // Check whether we are allowed to delete
    $canDo = JoomHelper::getActions();
    if(!$canDo->get('core.delete'))
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), JText::_('JLIB_RULES_NOT_ALLOWED'), 'error');

      return false;
    }

    $query = $this->_db->getQuery(true)
          ->update(_JOOM_TABLE_VOTES)
          ->set('userip='."''");

    $this->_db->setQuery($query);

    if(!$this->_db->execute())
    {
      // Redirect to maintenance manager because this task is usually launched there
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    // Redirect to maintenance manager because this task is usually launched there
    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=votes'), JText::_('COM_JOOMGALLERY_MAIMAN_VT_MSG_VOTES_IPS_DELETED'));
  }
}
