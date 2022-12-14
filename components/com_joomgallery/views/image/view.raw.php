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
 * Raw View class for the image view
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryViewImage extends JoomGalleryView
{
  /**
   * Raw view display method, outputs one image
   *
   * @param   string  $tpl  The name of the template file to parse
   * @return  void
   * @since   1.5.5
   */
  public function display($tpl = null)
  {
    jimport('joomla.filesystem.file');

    $type     = JRequest::getWord('type', 'thumb');
    $download = JRequest::getCmd('download');

    $crop_image = false;
    $cropwidth  = JRequest::getInt('width');
    $cropheight = JRequest::getInt('height');
    if($cropwidth && $cropheight)
    {
      $crop_image = true;
    }

    $model = $this->getModel();

    if(!$image = $model->getImage(JRequest::getInt('id')))
    {
      return $this->displayError($model->getError());
    }

    $img  = $this->_ambit->getImg($type.'_path', $image);

    $include_watermark = false;

    // Check access rights
    // If the thumbnail is required, we won't have to do more checks than the
    // general access level check in the model.
    // Additionally the hit counter gets only increased if we are not
    // displaying a thumbnail.
    if($type != 'thumb')
    {
      // Downloading
      if($download)
      {
        // Get category settings
        $cat_allow_download           = -1;
        $cat_allow_watermark_download = -1;

        $this->_db = JFactory::getDBO();
        $query = $this->_db->getQuery(true)
              ->select('c.allow_download, c.allow_watermark_download')
              ->from(_JOOM_TABLE_IMAGES . ' AS a')
              ->leftJoin(_JOOM_TABLE_CATEGORIES . ' AS c ON c.cid = a.catid')
              ->where('a.id = ' . JRequest::getInt('id'));
        $this->_db->setQuery($query);

        if(!empty($row = $this->_db->loadRow()))
        {
          $cat_allow_download           = $row[0];
          $cat_allow_watermark_download = $row[1];
        }

        // Is the download allowed for the user group of the current user and in this category?
        if(   !($cat_allow_download == (-1) ? $this->_config->get('jg_download') : $cat_allow_download)
          ||  (!$this->_config->get('jg_download_unreg') && !$this->_user->get('id'))
          )
        {
          $this->_mainframe->redirect(JRoute::_('index.php?view=gallery', false), JText::_('COM_JOOMGALLERY_COMMON_MSG_NO_ACCESS'), 'error');
        }

        // Is the download of the requested image type allowed?
        if(!$this->_config->get('jg_downloadfile') && $type == 'orig')
        {
          $this->_mainframe->redirect(JRoute::_('index.php?view=gallery', false), JText::_('COM_JOOMGALLERY_COMMON_MSG_NO_ACCESS'), 'notice');
        }
        if($this->_config->get('jg_downloadfile') == 1 && !JFile::exists($img))
        {
          $this->_mainframe->redirect(JRoute::_('index.php?view=gallery', false), JText::_('COM_JOOMGALLERY_COMMON_MSG_ORIGINAL_NOT_AVAILABLE'), 'notice');
        }
        if($this->_config->get('jg_downloadfile') == 2 && $type == 'orig')
        {
          if(!JFile::exists($img))
          {
            // Offer detail image for download if original images isn't available
            $type = 'img';
            $img  = $this->_ambit->getImg($type.'_path', $image);
          }
        }

        // Include watermark when downloading image?
        if(($cat_allow_watermark_download == (-1) ? $this->_config->get('jg_downloadwithwatermark') : $cat_allow_watermark_download))
        {
          $include_watermark = true;
        }

        // Trigger event 'onJoomBeforeDownload'
        $plugins = $this->_mainframe->triggerEvent('onJoomBeforeDownload', array(&$image, &$img, &$type, &$include_watermark));
        if(in_array(false, $plugins, true))
        {
          $this->_mainframe->redirect(JRoute::_('index.php?view=gallery', false));
        }

        // Message about new download
        if(!$this->_user->get('username'))
        {
          $username = JText::_('COM_JOOMGALLERY_COMMON_GUEST');
        }
        else
        {
          $username = $this->_config->get('jg_realname') ? $this->_user->get('name') : $this->_user->get('username');
        }

        require_once JPATH_COMPONENT.'/helpers/messenger.php';
        $messenger    = new JoomMessenger();
        $message      = array(
                              'subject'   => JText::_('COM_JOOMGALLERY_MESSAGE_NEW_DOWNLOAD_SUBJECT'),
                              'body'      => JText::sprintf('COM_JOOMGALLERY_MESSAGE_NEW_DOWNLOAD_BODY',
                                             $image->imgtitle, $image->imgfilename, $username),
                              'mode'      => 'download'
                              );
        $messenger->send($message);

        // Increase download counter
        $model->download();
      }
      // Displaying, not downloading
      else
      {
        if(!$this->_config->get('jg_showdetailpage') && !$this->_user->get('id'))
        {
          return $this->displayError(JText::_('COM_JOOMGALLERY_COMMON_MSG_NO_ACCESS'));
        }

        // Include watermark when displaying image in the detail view?
        // Check category settings
        $this->_db = JFactory::getDBO();
        $query = $this->_db->getQuery(true)
              ->select('c.allow_watermark')
              ->from(_JOOM_TABLE_IMAGES . ' AS a')
              ->innerJoin(_JOOM_TABLE_CATEGORIES . ' AS c ON c.cid = a.catid')
              ->where('a.id = ' . JRequest::getInt('id'));
        $this->_db->setQuery($query);
        $cat_allow_watermark = $this->_db->loadResult();

        if(($cat_allow_watermark == (-1) ? $this->_config->get('jg_watermark') : $cat_allow_watermark))
        {
          $include_watermark = true;
        }

        // Link to original image in detail view or category view
        if(   ($type == 'orig')
            &&
              (
                  (         (is_numeric($this->_config->get('jg_detailpic_open')) && $this->_config->get('jg_detailpic_open') == 0)
                    &&
                      (     (!$this->_config->get('jg_bigpic') && $this->_user->get('id'))
                        ||  (!$this->_config->get('jg_bigpic_unreg') && !$this->_user->get('id'))
                      )
                  )
                ||
                  (     (!is_numeric($this->_config->get('jg_detailpic_open')) || $this->_config->get('jg_detailpic_open') > 0)
                    &&  !$this->_config->get('jg_lightboxbigpic')
                  )
              )
          )
        {
          return $this->displayError(JText::_('COM_JOOMGALLERY_COMMON_MSG_NO_ACCESS'));
        }
      }

      // Increase hit counter
      $model->hit();
    }

    if(!JFile::exists($img))
    {
      return $this->displayError(JText::_('COM_JOOMGALLERY_COMMON_MSG_IMAGE_NOT_EXIST'));
    }

    $info = getimagesize($img);
    switch($info[2])
    {
      case 1:
        $mime = 'image/gif';
       break;
      case 2:
        $mime = 'image/jpeg';
        break;
      case 3:
        $mime = 'image/png';
        break;
      case 18:
        $mime = 'image/webp';
        break;
      default:
        return $this->displayError(JText::sprintf('COM_JOOMGALLERY_COMMON_MSG_MIME_NOT_ALLOWED', $info[2]));
    }

    // Set mime encoding
    $this->_doc->setMimeEncoding($mime);

    // Set header to specify the file name
    $disposition = 'inline';
    if($download)
    {
      // Allow downloading
      $disposition = 'attachment';
    }
    JResponse::setHeader('Content-disposition', $disposition.'; filename='.basename($img));

    // Inlude watermark and crop
    // Create tmp file
    $tmp_folder = JFactory::getApplication()->get('tmp_path');
    $img_output   = $tmp_folder.'/tmp_'.basename($img);
    if($crop_image || $include_watermark)
    {
      if(!JFile::copy($img, $img_output))
      {
        return $this->displayError(JText::_('COM_JOOMGALLERY_COMMON_MSG_IMAGE_NOT_EXIST'));
      }
    }
    else
    {
      $img_output = $img;
    }

    // crop image
    if ($crop_image)
    {
      $croppos     = JRequest::getInt('pos');
      $offsetx     = JRequest::getInt('x');   // what are this variables for?
      $offsety     = JRequest::getInt('y');   // what are this variables for? --> they werent used in the past either...
      $method      = $this->_config->get('jg_thumbcreation');
      $setting      = 3;  // 0=noresize 1=height,2=width,3=crop or 4=maxdimension
      $debugoutput = '';
      if($type == 'thumb')
      {
        $metadata  = false;
        $animation = false;
        $sharpen   = true;
      }
      elseif($type == 'orig')
      {
        $metadata  = true;
        $animation = true;
        $sharpen   = false;
      }
      else
      {
        $metadata  = false;
        $animation = true;
        $sharpen   = false;
      }

      $success = JoomIMGtools::resizeImage($debugoutput,$img,$img_output,$setting,$cropwidth,$cropheight,$method,100,$croppos,0,false,$metadata,$animation,$sharpen);

      if (!$success)
      {
        $this->displayError('Image cropping not successful');
      }
    }

    // watermark image
    if($include_watermark)
    {
      if($crop_image)
      {
        $src_img = $img_output;
      }
      else
      {
        $src_img = $img;
      }
      $wtm_file      = JPath::clean($this->_ambit->get('wtm_path').$this->_config->get('jg_wmfile'));
      $method        = $this->_config->get('jg_thumbcreation');
      $position      = $this->_config->get('jg_watermarkpos');
      $watermarkzoom = $this->_config->get('jg_watermarkzoom');
      $watermarksize = $this->_config->get('jg_watermarksize');
      $opacity       = 100;
      $debugoutput   = '';
      if($type == 'thumb')
      {
        $metadata  = false;
        $animation = false;
      }
      elseif($type == 'orig')
      {
        $metadata  = true;
        $animation = true;
      }
      else
      {
        $metadata  = false;
        $animation = true;
      }

      // Checks if watermark file is existent
      if(!JFile::exists($wtm_file))
      {
        $this->displayError(JText::_('COM_JOOMGALLERY_COMMON_ERROR_WATERMARK_NOT_EXIST'));
      }

      $success = JoomIMGtools::watermarkImage($debugoutput,$src_img,$img_output,$wtm_file,$method,$position,$watermarkzoom,$watermarksize,$opacity,$metadata,$animation);

      if (!$success)
      {
        $this->displayError(JText::_($debugoutput));
      }
    }

    // output image
    echo JFile::read($img_output);

    if($crop_image || $include_watermark)
    {
      // delete tmp file
      if(JFile::exists($img_output))
      {
        JFile::delete($img_output);
      }
    }
  }

  /**
   * Creates an empty image and inserts a text string for displaying error messages in 'img' tags
   *
   * @param   string  $msg  The message to display
   * @return  void
   * @since   3.0
   */
  protected function displayError($msg)
  {
    $this->_doc->setMimeEncoding('image/jpeg');

    $type   = JRequest::getWord('type', 'thumb');
    $width  = JRequest::getInt('width');
    $height = JRequest::getInt('height');

    if(!$width || !$height)
    {
      switch($type)
      {
        case 'thumb':
          $width  = $this->_config->get('jg_thumbwidth');
          $height = $this->_config->get('jg_thumbheight');
          break;
        case 'img':
          $width  = $this->_config->get('jg_maxwidth');
          $height = $this->_config->get('jg_maxwidth');
          break;
        default:
          $width  = 500;
          $height = 500;
          break;
      }
    }

    $img = imagecreatetruecolor($width, $height);
    $text_color = imagecolorallocate($img, 255, 0, 0);
    imagestring($img, 5, 5, 5,  $msg, $text_color);
    imagejpeg($img);
    imagedestroy($img);
  }
}
