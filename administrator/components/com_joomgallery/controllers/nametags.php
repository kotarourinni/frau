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
 * JoomGallery Nametags Controller
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryControllerNametags extends JoomGalleryController
{
  /**
   * Removes all nametags in the gallery
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
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), JText::_('JLIB_RULES_NOT_ALLOWED'), 'error');

      return false;
    }

    // Delete all nametags
    $this->_db->truncateTable(_JOOM_TABLE_NAMESHIELDS);

    if($this->_db->getErrorMsg())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), JText::_('COM_JOOMGALLERY_MAIMAN_MSG_ALL_NAMETAGS_DELETED'));
  }

  /**
   * Synchronizes the nametags with users registered and existing images.
   *
   * Nametags of users that aren't registed any more will be deleted.
   *
   * @return  void
   * @since   1.5.5
   */
  public function synchronize()
  {
    // Synchronize users-nametags-images
    $query = $this->_db->getQuery(true)
          ->delete('n USING '._JOOM_TABLE_NAMESHIELDS.' AS n')
          ->leftJoin('#__users AS u ON n.nuserid = u.id')
          ->leftJoin(_JOOM_TABLE_IMAGES.' AS i ON n.npicid  = i.id')
          ->where('(u.id IS NULL OR i.id IS NULL)');
    $this->_db->setQuery($query);

    if(!$this->_db->query())
    {
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), $this->_db->getErrorMsg(), 'error');
      return;
    }

    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), JText::_('COM_JOOMGALLERY_MAIMAN_MSG_NAMETAGS_SYNCHRONIZED'));
  }

  /**
   * Deletes the stored IP addresses of all nametags.
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
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), JText::_('JLIB_RULES_NOT_ALLOWED'), 'error');

      return false;
    }

    $query = $this->_db->getQuery(true)
          ->update(_JOOM_TABLE_NAMESHIELDS)
          ->set('nuserip='."''");

    $this->_db->setQuery($query);

    if(!$this->_db->execute())
    {
      // Redirect to maintenance manager because this task is usually launched there
      $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), $this->_db->getErrorMsg(), 'error');

      return;
    }

    // Redirect to maintenance manager because this task is usually launched there
    $this->setRedirect($this->_ambit->getRedirectUrl('maintenance&tab=nametags'), JText::_('COM_JOOMGALLERY_MAIMAN_NT_MSG_NAMETAGS_IPS_DELETED'));
  }
}
