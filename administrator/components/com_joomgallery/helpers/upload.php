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
 * Upload methods for frontend and backend
 *
 * - Batch (Zip)
 * - Single upload
 * - JAVA Applet (jupload)
 *
 * @package JoomGallery
 * @since   1.0.0
 */
class JoomUpload extends JObject
{
  /**
   * The ID of the category in which
   * the images shall be uploaded
   *
   * @var int
   */
  public $catid = 0;

  /**
   * The title of the image if the original
   * file name shouldn't be used
   *
   * @var string
   */
  public $imgtitle = '';

  /**
   * The number of images that
   * a user has already uploaded
   *
   * @var int
   */
  public $counter = 0;

  /**
   * Set to true if a error occured
   * and the debugoutput should be displayed
   *
   * @var boolean
   */
  public $debug = false;

  /**
   * Holds information about the upload procedure
   *
   * @var string
   */
  protected $_debugoutput = '';

  /**
   * Holds warnings and informations about the uploaded images
   *
   * @var string
   */
  protected $_warningoutput = '';

  /**
   * Determines whether we are in frontend
   *
   * @var boolean
   */
  protected $_site = true;

  /**
   * JApplication object
   *
   * @var object
   */
  protected $_mainframe;

  /**
   * JoomConfig object
   *
   * @var object
   */
  protected $_config;

  /**
   * JoomAmbit object
   *
   * @var object
   */
  protected $_ambit;

  /**
   * JUser object
   *
   * @var object
   */
  protected $_user;

  /**
   * JDatabase object
   *
   * @var object
   */
  protected $_db;

  /**
   * Folder for saving image chunks
   *
   * @var string
   */
  protected $chunksFolder;

  /**
   * Probability for cleaning up the chunks folder
   * (e.g. 0.001 means every 1000 requests a cleanup is triggered)
   *
   * @var float
   */
  protected $chunksCleanupProbability = 0.01;

  /**
   * Expiration time of chunk folders in seconds
   *
   * @var int
   */
  protected $chunksExpireIn = 86400;

  /**
   * Upload type
   *
   * @var string
   */
  protected $type;

  /**
   * Exif Structure Array
   *
   * @var array
   */
  protected $exif_config_array;

  /**
   * IPTC Structure Array
   *
   * @var array
   */
  protected $iptc_config_array;

  /**
   * Constructor
   *
   * @return  void
   * @since   1.0.0
   */
  public function __construct()
  {
    $this->_mainframe = JFactory::getApplication();
    $this->_config    = JoomConfig::getInstance();
    $this->_ambit     = JoomAmbit::getInstance();
    $this->_user      = JFactory::getUser();
    $this->_db        = JFactory::getDBO();

    // Load language files for Exif and IPTC data
    $language = JFactory::getLanguage();
    $language->load(_JOOM_OPTION.'.exif', JPATH_SITE);
    $language->load(_JOOM_OPTION.'.iptc', JPATH_SITE);

    require_once JPATH_ADMINISTRATOR.'/components/'._JOOM_OPTION.'/includes/exifarray.php';
    require_once JPATH_ADMINISTRATOR.'/components/'._JOOM_OPTION.'/includes/iptcarray.php';

    $this->exif_config_array = $exif_config_array;
    $this->iptc_config_array = $iptc_config_array;
    $this->debug             = $this->_mainframe->getUserStateFromRequest('joom.upload.debug', 'debug', false, 'post', 'bool');
    $this->_debugoutput      = $this->_mainframe->getUserStateFromRequest('joom.upload.debugoutput', 'debugoutput', '', 'post', 'string');
    $this->_warningoutput    = $this->_mainframe->getUserStateFromRequest('joom.upload.warningoutput', 'warningoutput', '', 'post', 'string');
    $this->catid             = $this->_mainframe->getUserStateFromRequest('joom.upload.catid', 'catid', 0, 'int');
    $this->imgtitle          = $this->_mainframe->getUserStateFromRequest('joom.upload.title', 'imgtitle', '', 'string');
    $this->counter           = $this->getImageNumber();
    $this->_site             = $this->_mainframe->isSite();

    // TODO Parameter in JoomGallery configuration neccessary ?
    // Create folder for image chunks
    $this->chunksFolder = $this->_mainframe->getCfg('tmp_path').'/joomgallerychunks';
    if(!JFolder::exists($this->chunksFolder))
    {
      JFolder::create($this->chunksFolder);
      JoomFile::copyIndexHtml($this->chunksFolder);
    }
  }

  /**
   * Returns the debug & warning output
   *
   * @return  mixed  The debug/warning output or false if debug is not enabled or debug/warning output is empty.
   * @since   3.0
   */
  public function getDebugOutput()
  {
    $title_warningoutput = '<strong>!!__'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_HEADING').'__!!</strong>';

    // Debug is enabled and there are some outputs (debug and/or warnings) to show
    if($this->debug && (!empty($this->_debugoutput) || !empty($this->_warningoutput)))
    {
      if(empty($this->_warningoutput))
      {
        return '<br />'.$this->_debugoutput;
      }
      else
      {
        return '<br />'.$title_warningoutput.'<br /><br />'.$this->_warningoutput.'<hr />'.$this->_debugoutput;
      }
    }
    // Debug is not enabled, but there are some warnings to show
    elseif(!($this->debug) && !empty($this->_warningoutput))
    {
      return '<br />'.$title_warningoutput.'<br /><br />'.$this->_warningoutput.'<br />';
    }

    return false;
  }

  /**
   * Returns if redirect shoud be done after successful upload
   *
   * @return  boolean  True for redirect, false for no redirect
   * @since   3.4
   */
  public function getIfRedirect()
  {
    if($this->debug || !empty($this->_warningoutput))
    {
      return false;
    }

    return true;
  }

  /**
   * Calls the correct upload method according to the specified type
   *
   * @return  boolean True on success, false otherwise
   * @since   1.5.0
   */
  public function upload($type = 'single')
  {
    $this->type = $type;

    // Additional security check for unregistered users
    if(!$this->_user->get('id') && !$this->_config->get('jg_unregistered_permissions'))
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_LOGGED'));

      return false;
    }

    jimport('joomla.filesystem.file');

    switch($this->type)
    {
      case 'batch':
        return $this->uploadBatch();
        break;
      case 'java':
        return $this->uploadJava();
        break;
      case 'ftp':
        return $this->uploadFTP();
        break;
      case 'ajax':
        return $this->uploadAJAX();
        break;
      default:
        return $this->uploadSingles();
        break;
     }
  }

  /**
   * Deletes all file parts in the chunks folder for files uploaded
   * more than chunksExpireIn seconds ago
   *
   * @return  void
   * @since   3.0
   */
  protected function cleanupChunks()
  {
    if(is_writable($this->chunksFolder) && 1 == mt_rand(1, 1/$this->chunksCleanupProbability))
    {
      if(($folders = JFolder::folders($this->chunksFolder, '.', false, true)) !== false)
      {
        foreach($folders as $folder)
        {
          if(($files = JFolder::files($folder, '.', false, true)) !== false)
          {
            foreach($files as $file)
            {
              if(time() - filemtime($file) > $this->chunksExpireIn)
              {
                JFolder::delete($folder);
                break;
              }
            }
          }
        }
      }
    }
  }

  /**
   * Single upload
   *
   * A number of images is chosen and uploaded afore.
   *
   * @return  void
   * @since   1.0.0
   */
  protected function uploadSingles()
  {
    // Access check
    $category = $this->getCategory($this->catid);
    if(     !$category
        ||  (     !$this->_user->authorise('joom.upload', _JOOM_OPTION.'.category.'.$this->catid)
              &&  (     !$this->_user->authorise('joom.upload.inown', _JOOM_OPTION.'.category.'.$this->catid)
                    ||  !$category->owner
                    ||  $category->owner != $this->_user->get('id')
                  )
            )
      )
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_ALLOWED_TO_UPLOAD_INTO_THIS_CATEGORY'));

      return false;
    }

    $this->_debugoutput .= '<p></p>';
    $this->_debugoutput .= '<strong>___'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_DEBUG_HEADING').'___</strong>'.'<br />';
    $images = JRequest::getVar('arrscreenshot', '', 'files');

    for($i = 0; $i < count($images['error'])/*$this->_config->get('jg_maxuploadfields')*/; $i++)
    {
      $this->_debugoutput .= '<hr />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_POSITION', $i + 1).'<br />';

      // Any image entry at position?
      // (4=UPLOAD_ERR_NO_FILE constant since PHP 4.3.0)
      // If not continue with next entry without setting 'debug' to 'true'.
      if($images['error'][$i] == 4)
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED').'<br />';
        continue;
      }

      // Check all other error codes
      if($images['error'][$i] > 0)
      {
        $this->_debugoutput .= $this->checkError($images['error'][$i]).'<br />';
        $this->debug        = true;
        continue;
      }

      if($this->_site && $this->counter > $this->_config->get('jg_maxuserimage') - 1 && $this->_user->get('id'))
      {
        $timespan = $this->_config->get('jg_maxuserimage_timespan');
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAY_ADD_MAX_OF', $this->_config->get('jg_maxuserimage'), $timespan > 0 ? JText::plural('COM_JOOMGALLERY_UPLOAD_NEW_IMAGE_MAXCOUNT_TIMESPAN', $timespan) : '').'<br />';
        break;
      }

      // Trigger onJoomBeforeUpload
      $plugins  = $this->_mainframe->triggerEvent('onJoomBeforeUpload');
      if(in_array(false, $plugins, true))
      {
        continue;
      }

      $screenshot          = $images['tmp_name'][$i];
      $origfilename        = $images['name'][$i];
      $screenshot_filesize = $images['size'][$i];

      // Get extension
      $tag = strtolower(JFile::getExt($origfilename));

      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_FILENAME', $origfilename).'<br />';

      // Image size must not exceed the setting in backend if we are in frontend
      if($this->_site && $screenshot_filesize > $this->_config->get('jg_maxfilesize'))
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAX_ALLOWED_FILESIZE', $this->_config->get('jg_maxfilesize')).'<br />';
        $this->debug  = true;
        continue;
      }

      // Check for right format
      if(   (($tag != 'jpeg') && ($tag != 'jpg') && ($tag != 'jpe') && ($tag != 'gif') && ($tag != 'png') && ($tag != 'webp'))
          || strlen($screenshot) == 0
          || $screenshot == 'none'
        )
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_INVALID_IMAGE_TYPE').'<br />';
        $this->debug = true;
        continue;
      }

      $filecounter = null;
      if(   ($this->_site && $this->_config->get('jg_useruploadnumber'))
          ||
            (!$this->_site && $this->_config->get('jg_filenamenumber'))
        )
      {
        $filecounter = $this->_getSerial();
      }


      // Create new filename
      // If generic filename set in backend use them
      if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
          ||
            (!$this->_site && $this->_config->get('jg_useorigfilename'))
        )
      {
        $oldfilename = $origfilename;
        $newfilename = JoomFile::fixFilename($origfilename);
      }
      else
      {
        $oldfilename = $this->imgtitle;
        $newfilename = JoomFile::fixFilename($this->imgtitle);
      }

      // Check the new filename
      if(JoomFile::checkValidFilename($oldfilename, $newfilename) == false)
      {
        if($this->_site)
        {
          $this->_debugoutput .= JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME').'<br />';
        }
        else
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_INVALID_FILENAME', $newfilename, $oldfilename).'<br />';
        }
        $this->debug = true;
        continue;
      }

      $newfilename = $this->_genFilename($newfilename, $tag, $filecounter);

      // We'll assume that this file is ok because with open_basedir,
      // we can move the file, but may not be able to access it until it's moved
      $return = JFile::upload($screenshot, $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
      if(!$return)
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_UPLOADING', $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)).'<br />';
        $this->debug        = true;
        continue;
      }

      $upfilesize          = filesize($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)) / 1000; //KB
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_COMPLETE', $upfilesize).'<br />';

      // Set permissions of uploaded file
      $return = JoomFile::chmod($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), '0644');
      /*if(!$return)
      {
        $this->_debugoutput .= $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'<br />';
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        null,
                        null
                        );
        $this->debug  = true;
        continue;
      }*/

      // Check for overriding with meta data
      $readfile       = $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid);
      $overridevalues = $this->getOverrideValues($readfile, $origfilename);

      // Create thumbnail and detail image
      if(!$this->resizeImage($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), $newfilename))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug  = true;
        continue;
      }

      // Insert database entry
      $row = JTable::getInstance('joomgalleryimages', 'Table');
      if(!$this->registerImage($row, $origfilename, $newfilename, $tag, $filecounter, $overridevalues))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        continue;
      }

      // Message about new image
      if($this->_site)
      {
        require_once JPATH_COMPONENT.'/helpers/messenger.php';
        $messenger  = new JoomMessenger();
        $message    = array(
                              'from'      => $this->_user->get('id'),
                              'subject'   => JText::_('COM_JOOMGALLERY_UPLOAD_MESSAGE_NEW_IMAGE_UPLOADED'),
                              'body'      => JText::sprintf('COM_JOOMGALLERY_MESSAGE_NEW_IMAGE_SUBMITTED_BODY', $this->_config->get('jg_realname') ? $this->_user->get('name') : $this->_user->get('username'), $row->imgtitle),
                              'mode'      => 'upload'
                            );
        $messenger->send($message);
      }

      $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_IMAGE_SUCCESSFULLY_ADDED').'<br />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_NEW_FILENAME', $newfilename).'<br /><br />';

      $this->_mainframe->triggerEvent('onJoomAfterUpload', array($row));
      $this->counter++;
    }

    $this->_debugoutput .= '<hr /><br />';

    // Reset file counter, delete original and create special gif selection and debug information
    $this->_mainframe->setUserState('joom.upload.filecounter', 0);
    $this->_mainframe->setUserState('joom.upload.delete_original', false);
    $this->_mainframe->setUserState('joom.upload.create_special_gif', false);
    $this->_mainframe->setUserState('joom.upload.debug', false);
    $this->_mainframe->setUserState('joom.upload.debugoutput', null);
    $this->_mainframe->setUserState('joom.upload.warningoutput', null);

    if(($debugOutput = $this->getDebugOutput()) !== false)
    {
      echo $debugOutput;
      $this->debug = true;
    }

    if(!$this->_site || JRequest::getBool('redirect'))
    {
      return !$this->debug;
    }

    JHTML::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/html');
?>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=upload'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_UPLOAD_MORE_UPLOADS'); ?>
      </a>
    </p>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=userpanel'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_COMMON_BACK_TO_USER_PANEL') ;?>
      </a>
    </p>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=gallery'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_COMMON_BACK_TO_GALLERY'); ?>
      </a>
    </p>
<?php
    return !$this->debug;
  }

  /**
   * Extract images from zip
   *
   * @return  boolean True on success, false otherwise.
   * @since   1.0.0
   */
  protected function uploadBatch()
  {
    // Check access
    $category = $this->getCategory($this->catid);
    if(     !$category
        ||  (     !$this->_user->authorise('joom.upload', _JOOM_OPTION.'.category.'.$this->catid)
              &&  (     !$this->_user->authorise('joom.upload.inown', _JOOM_OPTION.'.category.'.$this->catid)
                    ||  !$category->owner
                    ||  $category->owner != $this->_user->get('id')
                  )
            )
      )
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_ALLOWED_TO_UPLOAD_INTO_THIS_CATEGORY'));

      return false;
    }

    // Load the refresher in order to initialise it right now at the beginning
    require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/refresher.php';
    $refresher = new JoomRefresher();

    // Check existence of temp directory
    if(!JFolder::exists($this->_ambit->get('temp_path')))
    {
      $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_TEMP_MISSING'));

      return false;
    }

    // Check existence of uploaded zip
    if($zippack = JRequest::getVar('zippack', '', 'files'))
    {
      if(!JFile::exists($zippack['tmp_name']))
      {
        $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED'));
        return false;
      }

      // Make temp path writeable if it is not, workaround for servers with wwwrun-problem
      $permissions_changed = false;
      if(!is_writeable($this->_ambit->get('temp_path')))
      {
        JoomFile::chmod($this->_ambit->get('temp_path'), '0777', true);
        $permissions_changed = true;
      }

      // Create subdirectory in tmp folder
      // $zippack['name'] = original name of uploaded archive
      // strip extension before and add a random number at the end
      $extractdir = $this->_ambit->get('temp_path')
                    .JFile::stripExt($zippack['name'])
                    .'-'
                    .mt_rand(10000, 99999);

      $createerr = JFolder::create($extractdir);

      // Check createerr
      if(!$createerr)
      {
        $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED'));
        return false;
      }

      // Move uploaded file to a new directory with original name
      // because the uploaded archive is saved like php8900.tmp and JArchive
      // needs a valid extension
      $zipfile = $extractdir.'/'.$zippack['name'];
      if(!JFile::upload($zippack['tmp_name'], $zipfile, false, true))
      {
        $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED'));
        return false;
      }

      // Extract archive to new directory, JArchive chooses the right adapter
      // according to the extension
      jimport('joomla.filesystem.archive');
      $extracterr = JArchive::extract($zipfile, $extractdir);

      // TODO LF constant - Check error code of extraction
      if(!$extracterr)
      {
        $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED'));
        return false;
      }

      // Get all files from extraction directory with the allowed
      // extension, recursively, with full path
      $inclusions = '.jpg$|.JPG$|.jpeg$|.JPEG$|.jpe$|.JPE$|.png$|.PNG$|.gif$|.GIF$|.webp$|.WEBP$';
      $ziplist    = JFolder::files($extractdir, $inclusions, true, true);

      // Set back temp path permissions if they were changed before
      if($permissions_changed)
      {
        JoomFile::chmod($this->_ambit->get('temp_path'), '0755', true);
      }

      $sizeofzip = count($ziplist);

      // For each file extracted from zip get original filename and create
      // unique filename. Copy to new location, delete file in temp. location,
      // make thumbnail and add to database
      $this->_debugoutput .= '<p></p><hr />';
      $this->_debugoutput .= '<strong>___'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_DEBUG_HEADING').'___</strong>'.'<br />';
      if($sizeofzip == 1)
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_FILE_IN_BATCH');
      }
      else
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_FILES_IN_BATCH', $sizeofzip);
      }

      natcasesort($ziplist);

      $start = true;

      // Set session for extractdir in case of refreshing and deleting at end
      $this->_mainframe->setUserState('joom.upload.batch.subdir', $extractdir);
    }
    else
    {
      $ziplist    = $this->_mainframe->getUserState('joom.upload.batch.files');
      $sizeofzip  = count($ziplist);
      $start      = false;
    }

    // Counter of successfully uploaded images
    $counter = $this->_mainframe->getUserState('joom.upload.batch.counter', 0);

    // Reset the refresher in order to set total count of images to process
    $refresher->reset($sizeofzip, $start);

    foreach($ziplist as $key => $file)
    {
      // Check remaining time
      if(!$refresher->check())
      {
        $this->_mainframe->setUserState('joom.upload.batch.files', $ziplist);
        $this->_mainframe->setUserState('joom.upload.debugoutput', $this->_debugoutput);
        $this->_mainframe->setUserState('joom.upload.warningoutput', $this->_warningoutput);
        $this->_mainframe->setUserState('joom.upload.debug', $this->debug);
        $this->_mainframe->setUserState('joom.upload.batch.counter', $counter);
        $refresher->refresh(count($ziplist));
      }

      if($this->_site && $this->counter > $this->_config->get('jg_maxuserimage') - 1 && $this->_user->get('id'))
      {
        $timespan = $this->_config->get('jg_maxuserimage_timespan');
        $this->_debugoutput .= '<hr />'.JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAY_ADD_MAX_OF', $this->_config->get('jg_maxuserimage'), $timespan > 0 ? JText::plural('COM_JOOMGALLERY_UPLOAD_NEW_IMAGE_MAXCOUNT_TIMESPAN', $timespan) : '').'<br />';
        break;
      }

      // Trigger event 'onJoomBeforeUpload'
      $plugins  = $this->_mainframe->triggerEvent('onJoomBeforeUpload');
      if(in_array(false, $plugins, true))
      {
        unset($ziplist[$key]);
        continue;
      }

      // Get the filename without path, JFile::getName() does not
      // work on local installations
      $filepathinfos  = pathinfo($file);
      $origfilename   = $filepathinfos['basename'];
      $filesize       = filesize($file);
      $tag            = strtolower(JFile::getExt($origfilename));

      $this->_debugoutput .= '<hr />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_FILENAME', $origfilename).'<br />';

      // Image size must not exceed the setting in backend if we are in frontend
      if($this->_site && $filesize > $this->_config->get('jg_maxfilesize'))
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAX_ALLOWED_FILESIZE', $this->_config->get('jg_maxfilesize')).'<br />';
        $this->debug  = true;
        unset($ziplist[$key]);
        continue;
      }

      // Check for right format
      if(   (($tag != 'jpeg') && ($tag != 'jpg') && ($tag != 'jpe') && ($tag != 'gif') && ($tag != 'png') && ($tag != 'webp'))
          || strlen($file) == 0
          || $file == 'none'
        )
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_INVALID_IMAGE_TYPE').'<br />';
        $this->debug = true;
        unset($ziplist[$key]);
        continue;
      }

      // Check filename for special characters if not allowed
      if($this->_config->get('jg_filenamewithjs') == 0)
      {
        if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
            ||
              (!$this->_site && $this->_config->get('jg_useorigfilename'))
          )
        {
          $filename = $origfilename;
        }
        else
        {
          $filename = $this->imgtitle;
        }

        if(JoomFile::checkValidFilename($filename, '', true) == false)
        {
          if($this->_site)
          {
            $this->_debugoutput .= JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME').'<br />';
          }
          else
          {
            $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_INVALIDSC_FILENAME').'<br />';
          }
          $this->debug = true;
          unset($ziplist[$key]);
          continue;
        }
      }

      // Get the serial number if numbering is activated
      $filecounter = null;
      if(   ($this->_site && $this->_config->get('jg_useruploadnumber'))
          ||
            (!$this->_site && $this->_config->get('jg_filenamenumber'))
        )
      {
        $filecounter = $this->_getSerial();
      }

      // Create new filename
      // If generic filename set in backend use it
      if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
          ||
            (!$this->_site && $this->_config->get('jg_useorigfilename'))
        )
      {
        $oldfilename = $origfilename;
        $newfilename = JoomFile::fixFilename($origfilename);
      }
      else
      {
        $oldfilename = $this->imgtitle;
        $newfilename = JoomFile::fixFilename($this->imgtitle);
      }

      // Check the new filename
      if(JoomFile::checkValidFilename($oldfilename, $newfilename) == false)
      {
        if($this->_site)
        {
          $this->_debugoutput .= JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME').'<br />';
        }
        else
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_INVALID_FILENAME', $newfilename, $oldfilename).'<br />';
        }
        $this->debug = true;
        unset($ziplist[$key]);
        continue;
      }

      $newfilename = $this->_genFilename($newfilename, $tag, $filecounter);

      // Move the image from temp folder to originals folder
      $return = JFile::move($file,
                            $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
      if(!$return)
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_MOVING', $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'<br />';
        $this->debug        = true;
        unset($ziplist[$key]);
        continue;
      }

      // Try to set permissions to 644
      $return = JoomFile::chmod($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), '0644');

      $upfilesize          = filesize($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)) / 1000; //KB
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_COMPLETE', $upfilesize).'<br />';

      // Check for overriding with meta data
      $readfile       = $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid);
      $overridevalues = $this->getOverrideValues($readfile, $origfilename);

      // Create thumbnail and detail image
      if(!$this->resizeImage($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), $newfilename))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        unset($ziplist[$key]);
        continue;
      }

      // Insert the database entry
      $row  = JTable::getInstance('joomgalleryimages', 'Table');
      if(!$this->registerImage($row, $origfilename, $newfilename, $tag, $filecounter, $overridevalues))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        unset($ziplist[$key]);
        continue;
      }

      $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_IMAGE_SUCCESSFULLY_ADDED').'<br />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_NEW_FILENAME', $newfilename).'<br /><br />';

      $counter++;

      $this->_mainframe->triggerEvent('onJoomAfterUpload', array($row));

      $this->counter++;

      unset($ziplist[$key]);
    }

    // Remove subdir in temp finally
    $tempdir = $this->_mainframe->getUserState('joom.upload.batch.subdir');
    if($tempdir)
    {
      JFolder::delete($tempdir);
    }

    // Message about new images
    if($this->_site && $counter)
    {
      require_once(JPATH_COMPONENT.'/helpers/messenger.php');
      $messenger  = new JoomMessenger();
      $message    = array(
                            'from'      => $this->_user->get('id'),
                            'subject'   => JText::_('COM_JOOMGALLERY_MESSAGE_NEW_IMAGES_SUBMITTED_SUBJECT'),
                            'body'      => JText::sprintf('COM_JOOMGALLERY_MESSAGE_NEW_IMAGES_SUBMITTED_BODY', $this->_config->get('jg_realname') ? $this->_user->get('name') : $this->_user->get('username'), $counter),
                            'mode'      => 'upload'
                          );
      $messenger->send($message);
    }

    $this->_debugoutput .= '<hr /><br />';

    // Reset file counters, delete original and create special gif selection and debug information
    $this->_mainframe->setUserState('joom.upload.filecounter', 0);
    $this->_mainframe->setUserState('joom.upload.batch.counter', 0);
    $this->_mainframe->setUserState('joom.upload.delete_original', false);
    $this->_mainframe->setUserState('joom.upload.create_special_gif', false);
    $this->_mainframe->setUserState('joom.upload.debug', false);
    $this->_mainframe->setUserState('joom.upload.debugoutput', null);
    $this->_mainframe->setUserState('joom.upload.warningoutput', null);

    if(($debugOutput = $this->getDebugOutput()) !== false)
    {
      echo $debugOutput;
      $this->debug = true;
    }

    if(!$this->_site || JRequest::getBool('redirect'))
    {
      return !$this->debug;
    }

    JHTML::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/html');
?>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=upload&tab=batch'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_UPLOAD_MORE_UPLOADS'); ?>
      </a>
    </p>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=userpanel'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_COMMON_BACK_TO_USER_PANEL') ;?>
      </a>
    </p>
    <p>
      <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
      <a href="<?php echo JRoute::_('index.php?view=gallery'); ?>">
        <?php echo JText::_('COM_JOOMGALLERY_COMMON_BACK_TO_GALLERY'); ?>
      </a>
    </p>
<?php
    return !$this->debug;
  }

  /**
   * JAVA Applet upload
   *
   * @return  void
   * @since   1.0.0
  */
  protected function uploadJava()
  {

    // The Applet recognize an error with the text 'JOOMGALLERYUPLOADERROR'
    // and shows them within an JS alert box

    $this->_debugoutput .= '<strong>___'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_DEBUG_HEADING').'___</strong>'.'<br />';

    // Check common requirements
    // No catid
    if(!$this->catid)
    {
      jexit('JOOMGALLERYUPLOADERROR '.JText::_('COM_JOOMGALLERY_UPLOAD_JUPLOAD_SELECT_CATEGORY'));
    }

    // No common title
    if(   (!$this->_site || !$this->_config->get('jg_useruseorigfilename'))
      &&  ($this->_site || !$this->_config->get('jg_useorigfilename'))
      &&  !JRequest::getVar('imgtitle', '', 'post')
      )
    {
      jexit('JOOMGALLERYUPLOADERROR '.JText::_('COM_JOOMGALLERY_UPLOAD_JUPLOAD_IMAGE_MUST_HAVE_TITLE'));
    }

    // Access check
    $category = $this->getCategory($this->catid);
    if(     !$category
        ||  (     !$this->_user->authorise('joom.upload', _JOOM_OPTION.'.category.'.$this->catid)
              &&  (     !$this->_user->authorise('joom.upload.inown', _JOOM_OPTION.'.category.'.$this->catid)
                    ||  !$category->owner
                    ||  $category->owner != $this->_user->get('id')
                  )
            )
      )
    {
      jexit('JOOMGALLERYUPLOADERROR '.JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_ALLOWED_TO_UPLOAD_INTO_THIS_CATEGORY'));
    }

    $images = $_FILES;

    foreach($images as $file => $fileArray)
    {
      if($this->_site && $this->counter > $this->_config->get('jg_maxuserimage') - 1 && $this->_user->get('id'))
      {
        $timespan = $this->_config->get('jg_maxuserimage_timespan');
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAY_ADD_MAX_OF', $this->_config->get('jg_maxuserimage'), $timespan > 0 ? JText::plural('COM_JOOMGALLERY_UPLOAD_NEW_IMAGE_MAXCOUNT_TIMESPAN', $timespan) : '');
        $this->debug = true;
        break;
      }

      // Check error codes
      if($fileArray['error'] > 0)
      {
        $this->_debugoutput .= $this->checkError($fileArray['error']).'\n';
        $this->debug        = true;
        continue;
      }

      // Trigger event 'onJoomBeforeUpload'
      $plugins  = $this->_mainframe->triggerEvent('onJoomBeforeUpload');
      if(in_array(false, $plugins, true))
      {
        $this->_debugoutput .= 'Upload was stopped by a plugin';
        $this->debug = true;
        continue;
      }

      $screenshot           = $fileArray['tmp_name'];
      $origfilename         = $fileArray['name'];
      $screenshot_filesize  = $fileArray['size'];

      // Get extension
      $tag = strtolower(JFile::getExt($origfilename));

      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_FILENAME', $origfilename).'\n';

      // Check filename for special characters if not allowed
      if($this->_config->get('jg_filenamewithjs') == 0)
      {
        if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
            ||
              (!$this->_site && $this->_config->get('jg_useorigfilename'))
          )
        {
          $filename = $origfilename;
        }
        else
        {
          $filename = $this->imgtitle;
        }

        if(JoomFile::checkValidFilename($filename, '', true) == false)
        {
          if($this->_site)
          {
            $this->_debugoutput .= strip_tags(JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME'));
          }
          else
          {
            $this->_debugoutput .= strip_tags(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_INVALIDSC_FILENAME'));
          }
          $this->debug = true;
          continue;
        }
      }

      // Image size must not exceed the setting in backend except if we are in frontend
      if($this->_site && $screenshot_filesize > $this->_config->get('jg_maxfilesize'))
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAX_ALLOWED_FILESIZE', $this->_config->get('jg_maxfilesize')).'\n';
        $this->debug  = true;
        continue;
      }

      // Check for right format
      if(   (($tag != 'jpeg') && ($tag != 'jpg') && ($tag != 'jpe') && ($tag != 'gif') && ($tag != 'png') && ($tag != 'webp'))
          || strlen($screenshot) == 0
          || $screenshot == 'none'
        )
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_INVALID_IMAGE_TYPE').'\n';
        $this->debug = true;
        continue;
      }

      $filecounter = null;

      // Create new filename
      // If generic filename set in backend use them
      if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
          ||
            (!$this->_site && $this->_config->get('jg_useorigfilename'))
        )
      {
        $oldfilename = $origfilename;
        $newfilename = JoomFile::fixFilename($origfilename);
      }
      else
      {
        $oldfilename = $this->imgtitle;
        $newfilename = JoomFile::fixFilename($this->imgtitle);
      }

      // Check the new filename
      if(JoomFile::checkValidFilename($oldfilename, $newfilename) == false)
      {
        if($this->_site)
        {
          $this->_debugoutput .= strip_tags(JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME'));
        }
        else
        {
          $this->_debugoutput .= strip_tags(JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_INVALID_FILENAME', $newfilename, $oldfilename));
        }
        $this->debug = true;
        continue;
      }

      $newfilename = $this->_genFilename($newfilename, $tag, $filecounter);

      // If 'delete originals' is chosen in backend and the image
      // shall be uploaded resized this will be done locally in the applet.
      // Then, only the detail image will be uploaded.
      if(
            $this->_config->get('jg_resizetomaxwidth')
        &&
            (   ($this->_site && $this->_config->get('jg_delete_original_user') == 1)
            ||  (!$this->_site && $this->_config->get('jg_delete_original') == 1)
            )
        )
      {
        // Upload image to detail images folder
        $return = JFile::upload($screenshot, $this->_ambit->getImg('img_path', $newfilename, null, $this->catid));
        if(!$return)
        {
          $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_UPLOADING', $this->_ambit->getImg('img_path', $newfilename, null, $this->catid));
          $this->debug        = true;
          continue;
        }

        $return = JoomFile::chmod($this->_ambit->getImg('img_path', $newfilename, null, $this->catid), '0644');
        /*if(!$return)
        {
          $this->_debugoutput .= $this->_ambit->getImg('img_path', $newfilename, null, $this->catid).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'\n';
          $this->rollback(null,
                          $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                          null
                          );
          $this->debug  = true;
          continue;
        }*/

        $angle      = 0;
        $autorotate = false;

        // Check if auto-rotation is enabled
        if ($this->_config->get('jg_thumbautorot') == 1)
        {
          $autorotate = true;
        }

        // Create thumbnail
        $return = JoomIMGtools::resizeImage($this->_debugoutput,
                                            $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                                            $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid),
                                            $this->_config->get('jg_useforresizedirection'),
                                            $this->_config->get('jg_thumbwidth'),
                                            $this->_config->get('jg_thumbheight'),
                                            $this->_config->get('jg_thumbcreation'),
                                            $this->_config->get('jg_thumbquality'),
                                            $this->_config->get('jg_cropposition'),
                                            $angle,
                                            $autorotate,
                                            false,
                                            false,
                                            true
                                           );
        if(!$return)
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_THUMBNAIL_NOT_CREATED', $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)).'\n';
          $this->rollback(null,
                          $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                          $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                          );
          $this->debug        = true;
          continue;
        }

        $thumbfilesize       = filesize($this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)) / 1000; //KB
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_THUMBNAIL_CREATED', $thumbfilesize).'<br />';
      }
      else
      {
        // Upload image into original images folder
        $return = JFile::upload($screenshot, $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
        if(!$return)
        {
          $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_UPLOADING', $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)).'\n';
          $this->debug        = true;
          continue;
        }

        $return = JoomFile::chmod($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), '0644');
        /*if(!$return)
        {
          $this->_debugoutput .= $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'\n';
          $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                          null,
                          null
                          );
          $this->debug        = true;
          continue;
        }*/

        // Check for overriding with meta data
        $readfile       = $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid);
        $overridevalues = $this->getOverrideValues($readfile, $origfilename);

        // Create thumbnail and detail image
        if(!$this->resizeImage($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), $newfilename))
        {
          $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                          $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                          $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                          );
          $this->debug = true;
          continue;
        }
      }

      // Insert the database entry
      $row = JTable::getInstance('joomgalleryimages', 'Table');
      if(!$this->registerImage($row, $origfilename, $newfilename, $tag, null, $overridevalues))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        continue;
      }

      $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_IMAGE_SUCCESSFULLY_ADDED').'\n';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_NEW_FILENAME', $newfilename).'\n';

      $this->_mainframe->triggerEvent('onJoomAfterUpload', array($row));
      $this->counter++;
    }

    // Reset file counter, delete original and create special gif selection and debug information
    $this->_mainframe->setUserState('joom.upload.filecounter', 0);
    $this->_mainframe->setUserState('joom.upload.delete_original', false);
    $this->_mainframe->setUserState('joom.upload.create_special_gif', false);
    $this->_mainframe->setUserState('joom.upload.debug', false);
    $this->_mainframe->setUserState('joom.upload.debugoutput', null);
    $this->_mainframe->setUserState('joom.upload.warningoutput', null);

    if($this->debug)
    {
      echo "JOOMGALLERYUPLOADERROR ";
    }
    else
    {
      // Counter of successfully uploaded images, only in frontend upload
      if($this->_site)
      {
        $counter = $this->_mainframe->getUserState('joom.upload.java.counter', 0);
        $counter++;
        $this->_mainframe->setUserState('joom.upload.java.counter', $counter);
      }
      echo "\nJOOMGALLERYUPLOADSUCCESS\n";
    }

    if(($debugOutput = $this->getDebugOutput()) !== false)
    {
      echo $debugOutput;
      $this->debug = true;
    }

    jexit();
  }

  /**
   * FTP Upload
   * Several images uploaded via FTP before are moved to a category
   *
   * @return  void
   * @since   1.0.0
  */
  protected function uploadFTP()
  {
    // FTP upload is only available in backend at the moment
    if($this->_site)
    {
      return false;
    }

    // Access check
    $category = $this->getCategory($this->catid);
    if(     !$category
        ||  (     !$this->_user->authorise('joom.upload', _JOOM_OPTION.'.category.'.$this->catid)
              &&  (     !$this->_user->authorise('joom.upload.inown', _JOOM_OPTION.'.category.'.$this->catid)
                    ||  !$category->owner
                    ||  $category->owner != $this->_user->get('id')
                  )
            )
      )
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_ALLOWED_TO_UPLOAD_INTO_THIS_CATEGORY'));

      return false;
    }

    $subdirectory = $this->_db->escape($this->_mainframe->getUserStateFromRequest('joom.upload.ftp.subdirectory', 'subdirectory', '/', 'post', 'string'));
    $ftpfiles     = $this->_mainframe->getUserStateFromRequest('joom.upload.ftp.files', 'ftpfiles', array(), 'array');

    if(!$ftpfiles && JRequest::getBool('ftpfiles'))
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_NO_IMAGES_SELECTED'));

      return false;
    }

    // Load the refresher
    require_once JPATH_COMPONENT.'/helpers/refresher.php';
    $refresher = new JoomRefresher(array('remaining' => count($ftpfiles), 'start' => JRequest::getBool('ftpfiles')));

    $this->_debugoutput .= '<p></p>';
    $this->_debugoutput .= '<strong>___'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_DEBUG_HEADING').'___</strong>'.'<br />';

    foreach($ftpfiles as $key => $origfilename)
    {
      // Check remaining time
      if(!$refresher->check())
      {
        $this->_mainframe->setUserState('joom.upload.ftp.files', $ftpfiles);
        $this->_mainframe->setUserState('joom.upload.debugoutput', $this->_debugoutput);
        $this->_mainframe->setUserState('joom.upload.warningoutput', $this->_warningoutput);
        $this->_mainframe->setUserState('joom.upload.debug', $this->debug);
        $refresher->refresh(count($ftpfiles));
      }

      // Get extension
      $tag = strtolower(JFile::getExt($origfilename));

      $this->_debugoutput .= '<hr />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_FILENAME', $origfilename).'<br />';

      /*// Image size must not exceed the setting in backend if we are in frontend
      if($this->_site && $screenshot_filesize > $this->_config->get('jg_maxfilesize'))
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAX_ALLOWED_FILESIZE', $this->_config->get('jg_maxfilesize')).'<br />';
        $this->debug  = true;
        unset($ftpfiles[$key]);
        continue;
      }*/

      // Check for right format
      if(   (($tag != 'jpeg') && ($tag != 'jpg') && ($tag != 'jpe') && ($tag != 'gif') && ($tag != 'png') && ($tag != 'webp'))
          || strlen($origfilename) == 0
        )
      {
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_INVALID_IMAGE_TYPE').'<br />';
        $this->debug = true;
        unset($ftpfiles[$key]);
        continue;
      }

      // Check filename for special characters if not allowed
      if($this->_config->get('jg_filenamewithjs') == 0)
      {
        if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
            ||
              (!$this->_site && $this->_config->get('jg_useorigfilename'))
          )
        {
          $filename = $origfilename;
        }
        else
        {
          $filename = $this->imgtitle;
        }

        if(JoomFile::checkValidFilename($filename, '', true) == false)
        {
          $this->_debugoutput .= strip_tags(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_INVALIDSC_FILENAME'));
          $this->debug = true;
          unset($ftpfiles[$key]);
          continue;
        }
      }

      $filecounter = null;
      if(   ($this->_site && $this->_config->get('jg_useruploadnumber'))
          ||
            (!$this->_site && $this->_config->get('jg_filenamenumber'))
        )
      {
        $filecounter = $this->_getSerial();
      }

      // Create new filename
      // If generic filename set in backend use them
      if(   ($this->_site && $this->_config->get('jg_useruseorigfilename'))
          ||
            (!$this->_site && $this->_config->get('jg_useorigfilename'))
        )
      {
        $oldfilename = $origfilename;
        $newfilename = JoomFile::fixFilename($origfilename);
      }
      else
      {
        $oldfilename = $this->imgtitle;
        $newfilename = JoomFile::fixFilename($this->imgtitle);
      }

      // Check the new filename
      if(JoomFile::checkValidFilename($oldfilename, $newfilename) == false)
      {
        $this->_debugoutput .= strip_tags(JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_INVALID_FILENAME', $newfilename, $oldfilename));
        $this->debug = true;
        unset($ftpfiles[$key]);
        continue;
      }

      $newfilename = $this->_genFilename($newfilename, $tag, $filecounter);

      // Check for overriding with meta data
      $readfile       = JPath::clean($this->_ambit->get('ftp_path').$subdirectory.$origfilename);
      $overridevalues = $this->getOverrideValues($readfile, $origfilename);

      // Resize image
      $delete_file = $this->_mainframe->getUserStateFromRequest('joom.upload.file_delete', 'file_delete', false, 'bool');
      if(!$this->resizeImage(JPath::clean($this->_ambit->get('ftp_path').$subdirectory.$origfilename), $newfilename, false, $delete_file))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        unset($ftpfiles[$key]);
        continue;
      }

      $row = JTable::getInstance('joomgalleryimages', 'Table');
      if(!$this->registerImage($row, $origfilename, $newfilename, $tag, $filecounter, $overridevalues))
      {
        $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
                        $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
                        );
        $this->debug = true;
        unset($ftpfiles[$key]);
        continue;
      }

      $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_IMAGE_SUCCESSFULLY_ADDED').'<br />';
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_NEW_FILENAME', $newfilename).'<br /><br />';

      $this->_mainframe->triggerEvent('onJoomAfterUpload', array($row));

      unset($ftpfiles[$key]);
    }

    $this->_debugoutput .= '<hr /><br />';

    // Reset file counter, delete original delete source file and
    // create special gif selection and debug information
    $this->_mainframe->setUserState('joom.upload.filecounter', 0);
    $this->_mainframe->setUserState('joom.upload.file_delete', false);
    $this->_mainframe->setUserState('joom.upload.delete_original', false);
    $this->_mainframe->setUserState('joom.upload.create_special_gif', false);
    $this->_mainframe->setUserState('joom.upload.debug', false);
    $this->_mainframe->setUserState('joom.upload.debugoutput', null);
    $this->_mainframe->setUserState('joom.upload.warningoutput', null);

    if(($debugOutput = $this->getDebugOutput()) !== false)
    {
      echo $debugOutput;
      $this->debug = true;
    }

    return !$this->debug;
  }

  /**
   * AJAX upload
   *
   * An image is chosen and uploaded afore.
   *
   * @return  void
   * @since   3.0
   */
  protected function uploadAJAX()
  {
    // Access check
    $category = $this->getCategory($this->catid);
    if(     !$category
            ||  (     !$this->_user->authorise('joom.upload', _JOOM_OPTION.'.category.'.$this->catid)
                    &&  (     !$this->_user->authorise('joom.upload.inown', _JOOM_OPTION.'.category.'.$this->catid)
                            ||  !$category->owner
                            ||  $category->owner != $this->_user->get('id')
                    )
            )
    )
    {
      $this->setError(JText::_('COM_JOOMGALLERY_COMMON_MSG_YOU_ARE_NOT_ALLOWED_TO_UPLOAD_INTO_THIS_CATEGORY'));

      return false;
    }

    $image               = JRequest::getVar('qqfile', '', 'files');
    $qqtotalfilesize     = JRequest::getInt('qqtotalfilesize', -1);
    $totalParts          = JRequest::getInt('qqtotalparts', 1);
    $screenshot          = $image['tmp_name'];
    $origfilename        = JRequest::getString('qqfilename', '');
    $screenshot_filesize = $image['size'];
    if(empty($origfilename))
    {
      $origfilename = $image['name'];
    }

    // Clean up directory containing old image chunks
    $this->cleanupChunks();

    if($totalParts == 1 && $qqtotalfilesize > 0 && $screenshot_filesize != $qqtotalfilesize)
    {
      $this->setError(JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_PARTLY_UPLOADED'));
      return false;
    }

    if($image['error'] > 0)
    {
      $errorMsg = JText::_('COM_JOOMGALLERY_AJAXUPLOAD_UPLOAD_FAILED').' '.JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_CODE', $image['error']);
      $this->setError($errorMsg);

      return false;
    }

    if($this->_site && $this->counter > $this->_config->get('jg_maxuserimage') - 1 && $this->_user->get('id'))
    {
      $timespan = $this->_config->get('jg_maxuserimage_timespan');
      $errorMsg = JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAY_ADD_MAX_OF', $this->_config->get('jg_maxuserimage'), $timespan > 0 ? JText::plural('COM_JOOMGALLERY_UPLOAD_NEW_IMAGE_MAXCOUNT_TIMESPAN', $timespan) : '');
      $this->setError($errorMsg);
      return false;
    }

    $cleanChunkDir = false;
    // Save a chunk
    if($totalParts > 1)
    {
      $partIndex    = JRequest::getInt('qqpartindex');
      $uuid         = JRequest::getVar('qquuid');

      if(!is_writable($this->chunksFolder))
      {
        $errorMsg = JText::sprintf('COM_JOOMGALLERY_AJAXUPLOAD_ERROR_CHUNKSDIR_NOTWRITABLE', $this->chunksFolder);
        $this->setError($errorMsg);
        return false;
      }

      // Create unique target folder for chunks
      $targetFolder = $this->chunksFolder.'/'.$uuid;
      if(!JFolder::exists($targetFolder))
      {
        if(!JFolder::create($targetFolder))
        {
          return false;
        }
      }

      // Save chunk in target folder
      $target  = $targetFolder.'/'.$partIndex;
      if(JFile::upload($screenshot, $target) === true)
      {
        // Last chunk
        if(($totalParts - 1) == $partIndex)
        {
          $target              = $targetFolder.'/'.($partIndex + 1);
          $cleanChunkDir       = $targetFolder;
          $screenshot          = $target;
          $screenshot_filesize = 0;

          if($fp_target = fopen($target, 'wb'))
          {
            for($parts = 0; $parts < $totalParts; $parts++)
            {
              $fp_chunk              = fopen($targetFolder.'/'.$parts, "rb");
              $screenshot_filesize  += stream_copy_to_stream($fp_chunk, $fp_target);
              fclose($fp_chunk);
            }
            fclose($fp_target);
          }
          else
          {
            // Complete image could not be created
            return false;
          }
        }
        else
        {
          // Another chunk will arrive later
          return true;
        }
      }
      else
      {
        // Chunk could not be saved
        return false;
      }
    }

    // Trigger onJoomBeforeUpload
    $plugins  = $this->_mainframe->triggerEvent('onJoomBeforeUpload');
    if(in_array(false, $plugins, true))
    {
      $errorMsg = JText::_('COM_JOOMGALLERY_AJAXUPLOAD_UPLOAD_FAILED');
      $this->setError($errorMsg);
      return false;
    }

     $this->_debugoutput .= '<strong>___'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_DEBUG_HEADING').'___</strong>'.'<br />';
    $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_FILENAME', $origfilename).'<br />';

    // Image size must not exceed the setting in backend if we are in frontend
    if($this->_site && $screenshot_filesize > $this->_config->get('jg_maxfilesize'))
    {
      $errorMsg = JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_MAX_ALLOWED_FILESIZE', $this->_config->get('jg_maxfilesize'));
      $this->setError($errorMsg);
      $this->_debugoutput .= $errorMsg.'<br />';
      $this->debug = true;
      return false;
    }

    // Get extension
    $tag = strtolower(JFile::getExt($origfilename));

    // Check for right format
    if(   (($tag != 'jpeg') && ($tag != 'jpg') && ($tag != 'jpe') && ($tag != 'gif') && ($tag != 'png') && ($tag != 'webp'))
            || strlen($screenshot) == 0
            || $screenshot == 'none'
    )
    {
      $errorMsg = JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_INVALID_IMAGE_TYPE');
      $this->setError($errorMsg);
      $this->_debugoutput .= $errorMsg.'<br />';
      $this->debug = true;
      return false;
    }

    $filecounter = null;
    if(    ($this->_site && $this->_config->get('jg_useruploadnumber'))
            ||
            (!$this->_site && $this->_config->get('jg_filenamenumber'))
    )
    {
      $filecounter = $this->_getSerial();
    }

    // Create new filename
    // If generic filename set in backend use them
    if(    ($this->_site && $this->_config->get('jg_useruseorigfilename'))
            ||
            (!$this->_site && $this->_config->get('jg_useorigfilename'))
    )
    {
      $oldfilename = $origfilename;
      $newfilename = JoomFile::fixFilename($origfilename);
    }
    else
    {
      $oldfilename = $this->imgtitle;
      $newfilename = JoomFile::fixFilename($this->imgtitle);
    }

    // Check the new filename
    if(JoomFile::checkValidFilename($oldfilename, $newfilename) == false)
    {
      if($this->_site)
      {
        $errorMsg = JText::_('COM_JOOMGALLERY_COMMON_ERROR_INVALID_FILENAME').'<br />';
      }
      else
      {
        $errorMsg = JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_INVALID_FILENAME', $newfilename, $oldfilename).'<br />';
      }
      $this->setError($errorMsg);
      $this->_debugoutput .= $errorMsg.'<br />';
      $this->debug = true;
      return false;
    }

    $newfilename = $this->_genFilename($newfilename, $tag, $filecounter);

    if($cleanChunkDir !== false)
    {
      $return = JFile::move($screenshot, $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
      // Clean up chunk directory
      JFolder::delete($cleanChunkDir);
    }
    else
    {
      // We'll assume that this file is ok because with open_basedir,
      // we can move the file, but may not be able to access it until it's moved
      $return = JFile::upload($screenshot, $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
    }

    if(!$return)
    {
      $errorMsg = JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_UPLOADING', $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid));
      $this->setError($errorMsg);
      $this->_debugoutput .= $errorMsg.'<br />';
      $this->debug = true;
      return false;
    }

    $upfilesize          = filesize($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid)) / 1000; //KB
    $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_COMPLETE', $upfilesize).'<br />';

    // Set permissions of uploaded file
    $return = JoomFile::chmod($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), '0644');
    //     if(!$return)
      //     {
      //       $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), null, null);
      //       $errorMsg = $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS');
      //       $this->_debugoutput .= $errorMsg.'<br />';
      //       $this->debug = true;
      //       return false;
      //     }

    // Check for overriding with meta data
    $readfile       = $this->_ambit->getImg('orig_path', $newfilename, null, $this->catid);
    $overridevalues = $this->getOverrideValues($readfile, $origfilename);

    // Create thumbnail and detail image
    if(!$this->resizeImage($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid), $newfilename))
    {
      $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
              $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
              $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
      );
      $this->debug  = true;
      return false;
    }

    // Insert database entry
    $row = JTable::getInstance('joomgalleryimages', 'Table');
    if(!$this->registerImage($row, $origfilename, $newfilename, $tag, $filecounter, $overridevalues))
    {
      $this->rollback($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid),
              $this->_ambit->getImg('img_path', $newfilename, null, $this->catid),
              $this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid)
      );
      $this->debug = true;
      return false;
    }

    // Message about new image
    if($this->_site)
    {
      require_once JPATH_COMPONENT.'/helpers/messenger.php';
      $messenger  = new JoomMessenger();
      $message    = array(
              'from'      => $this->_user->get('id'),
              'subject'   => JText::_('COM_JOOMGALLERY_UPLOAD_MESSAGE_NEW_IMAGE_UPLOADED'),
              'body'      => JText::sprintf('COM_JOOMGALLERY_MESSAGE_NEW_IMAGE_SUBMITTED_BODY', $this->_config->get('jg_realname') ? $this->_user->get('name') : $this->_user->get('username'), $row->imgtitle),
              'mode'      => 'upload'
      );
      $messenger->send($message);
    }

    $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_IMAGE_SUCCESSFULLY_ADDED').'<br />';
    $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_NEW_FILENAME', $newfilename).'<br />';

    $this->_mainframe->triggerEvent('onJoomAfterUpload', array($row));

    // Reset file counter, delete original and create special gif selection and debug information
    $this->_mainframe->setUserState('joom.upload.filecounter', 0);
    $this->_mainframe->setUserState('joom.upload.delete_original', false);
    $this->_mainframe->setUserState('joom.upload.create_special_gif', false);
    $this->_mainframe->setUserState('joom.upload.debug', false);
    $this->_mainframe->setUserState('joom.upload.debugoutput', null);
    $this->_mainframe->setUserState('joom.upload.warningoutput', null);

    return $row;
  }

  /**
   * Generates filenames
   * e.g. <Name/gen. Title>_<opt. Filecounter>_<Date>_<Random Number>.<Extension>
   *
   * @param   string    $filename     Original upload name e.g. 'malta.jpg'
   * @param   string    $tag          File extension e.g. 'jpg'
   * @param   int       $filecounter  Optinally a filecounter
   * @return  string    The generated filename
   * @since   1.0.0
   */
  protected function _genFilename($filename, $tag, $filecounter = null)
  {
    $filedate = date('Ymd');

    // Remove filetag = $tag incl '.'
    // Only if exists in filename
    if(stristr($filename, $tag))
    {
      $filename = substr($filename, 0, strlen($filename)-strlen($tag)-1);
    }

    do
    {
      mt_srand();
      $randomnumber = mt_rand(1000000000, 2099999999);

      $maxlen = 255 - 2 - strlen($filedate) - strlen($randomnumber) - (strlen($tag) + 1);
      if(!is_null($filecounter))
      {
        $maxlen = $maxlen - (strlen($filecounter) + 1);
      }
      if(strlen($filename) > $maxlen)
      {
        $filename = substr($filename, 0, $maxlen);
      }

      // New filename
      if(is_null($filecounter))
      {
        $newfilename = $filename.'_'.$filedate.'_'.$randomnumber.'.'.$tag;
      }
      else
      {
        $newfilename = $filename.'_'.$filecounter.'_'.$filedate.'_'.$randomnumber.'.'.$tag;
      }
    }
    while(    JFile::exists($this->_ambit->getImg('orig_path', $newfilename, null, $this->catid))
           || JFile::exists($this->_ambit->getImg('img_path', $newfilename, null, $this->catid))
           || JFile::exists($this->_ambit->getImg('thumb_path', $newfilename, null, $this->catid))
         );

    return $newfilename;
  }

  /**
   * Calculates the serial number for images file names and titles
   *
   * @return  int       New serial number
   * @since   1.0.0
   */
  protected function _getSerial()
  {
    static $picserial;

    // Check if the initial value is already calculated
    if(isset($picserial))
    {
      $picserial++;

      // Store the next value in the session
      $this->_mainframe->setUserState('joom.upload.filecounter', $picserial + 1);

      return $picserial;
    }

    // Start value set in backend
    $filecounter = $this->_mainframe->getUserStateFromRequest('joom.upload.filecounter', 'filecounter', 0, 'post', 'int');

    // If there is no starting value set, disable numbering
    if(!$filecounter)
    {
      return null;
    }

    // No negative starting value
    if($filecounter < 0)
    {
      $picserial = 1;
    }
    else
    {
      $picserial = $filecounter;
    }

    return $picserial;
  }

  /**
   * Sets new ordering according to $config->jg_uploadorder
   *
   * @param   object    $row  Holds the data of the new image
   * @return  int       The new ordering number
   * @since   1.0.0
   */
  protected function _getOrdering($row)
  {
    switch($this->_config->get('jg_uploadorder'))
    {
      case 1:
        $ordering = $row->getPreviousOrder('catid = '.$row->catid);
        break;
      case 2:
        $ordering = $row->getNextOrder('catid = '.$row->catid);
        break;
      default;
        $ordering = 1;
        break;
    }

    return $ordering;
  }

  /**
   * Calculates whether the memory limit is enough
   * to work on a specific image.
   *
   * @param   string  $filename The filename of the image and the path to it.
   * @param   string  $format   The image file type (e.g. 'gif', 'jpg' or 'png')
   * @return  boolean True, if we have enough memory to work, false otherwise
   * @since   1.0.0
   */
  protected function checkMemory($filename, $format)
  {
    if($this->_config->get('jg_thumbcreation') == 'im')
    {
      // ImageMagick isn't dependent on memory_limit
      return true;
    }

    if((function_exists('memory_get_usage')) && (ini_get('memory_limit')))
    {
      $imageInfo = getimagesize($filename);
      $jpgpic = false;
      switch(strtoupper($format))
      {
        case 'GIF':
          // Measured factor 1 is better
          $channel = 1;
          break;
        case 'JPG':
        case 'JPEG':
        case 'JPE':
          $channel = $imageInfo['channels'];
          $jpgpic=true;
          break;
        case 'PNG':
          // No channel for png
          $channel = 3;
          break;
        case 'WEBP':
// Todo
          // No channel for Webp ??
          $channel = 3;
          break;
      }
      $MB  = 1048576;
      $K64 = 65536;

      if($this->_config->get('jg_fastgd2thumbcreation') && $jpgpic && $this->_config->get('jg_thumbcreation') == 'gd2')
      {
        // Function of fast gd2 creation needs more memory
        $corrfactor = 2.1;
      }
      else
      {
        $corrfactor = 1.7;
      }

      $memoryNeeded = round(($imageInfo[0]
                             * $imageInfo[1]
                             * $imageInfo['bits']
                             * $channel / 8
                             + $K64)
                             * $corrfactor);

      $memoryNeeded = memory_get_usage() + $memoryNeeded;
      // Get memory limit
      $memory_limit = @ini_get('memory_limit');
      if(!empty($memory_limit) && $memory_limit != 0)
      {
        $memory_limit = substr($memory_limit, 0, -1) * 1024 * 1024;
      }

      if($memory_limit != 0 && $memoryNeeded > $memory_limit)
      {
        $memoryNeededMB = round ($memoryNeeded / 1024 / 1024, 0);
        $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_ERROR_MEM_EXCEED').
                        $memoryNeededMB." MByte ("
                        .$memoryNeeded.") Serverlimit: "
                        .$memory_limit/$MB."MByte (".$memory_limit.")<br />" ;
        return false;
      }
    }

    return true;
  }

  /**
   * Rollback an erroneous upload
   *
   * @param   string  $original Path to original image
   * @param   string  $detail   Path to detail image
   * @param   string  $thumb    Path to thumbnail
   * @return  void
   * @since   1.0.0
   */
  protected function rollback($original, $detail, $thumb)
  {
    if(!is_null($original) && JFile::exists($original))
    {
      $return = JFile::delete($original);
      if($return)
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_ORGDEL_OK').'</p>';
      }
      else
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_ORGDEL_NOK').'</p>';
      }
    }

    if(!is_null($detail) && JFile::exists($detail))
    {
      $return = JFile::delete($detail);
      if($return)
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_DTLDEL_OK').'</p>';
      }
      else
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_DTLDEL_NOK').'</p>';
      }
    }

    if(!is_null($thumb) && JFile::exists($thumb))
    {
      $return = JFile::delete($thumb);
      if($return)
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_THBDEL_OK').'</p>';
      }
      else
      {
        $this->_debugoutput .= '<p>'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_RB_THBDEL_NOK').'</p>';
      }
    }
  }

  /**
   * Returns the number of images of the current user
   *
   * @return  int     The number of images of the current user
   * @since   1.5.5
   */
  protected function getImageNumber()
  {
    $query = $this->_db->getQuery(true)
          ->select('COUNT(id)')
          ->from(_JOOM_TABLE_IMAGES)
          ->where('owner = '.$this->_user->get('id'));

    $timespan = $this->_config->get('jg_maxuserimage_timespan');
    if($timespan > 0)
    {
      $query->where('imgdate > (UTC_TIMESTAMP() - INTERVAL '. $timespan .' DAY)');
    }

    $this->_db->setQuery($query);

    return $this->_db->loadResult();
  }

  /**
   * Creates thumbnail and detail image for an image file and rotate if needed
   *
   * @param   string  $source         The source file for which the thumbnail and the detail image shall be created
   * @param   string  $filename       The file name for the created files
   * @param   boolean $is_in_original Determines whether the source file is already in the original images folders
   * @param   boolean $delete_source  Determines whether the source file shall be deleted after the procedure
   * @return  boolean True on success, false otherwise
   * @since   1.5.7
   */
  protected function resizeImage($source, $filename, $is_in_original = true, $delete_source = false)
  {
    $angle = 0;

    // Create thumb
    $return = JoomIMGtools::resizeImage($this->_debugoutput,
                                        $source,
                                        $this->_ambit->getImg('thumb_path', $filename, null, $this->catid),
                                        $this->_config->get('jg_useforresizedirection'),
                                        $this->_config->get('jg_thumbwidth'),
                                        $this->_config->get('jg_thumbheight'),
                                        $this->_config->get('jg_thumbcreation'),
                                        $this->_config->get('jg_thumbquality'),
                                        $this->_config->get('jg_cropposition'),
                                        $angle,
                                        $this->_config->get('jg_thumbautorot'),
                                        false,
                                        false,
                                        true
                                       );
    if(!$return)
    {
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_THUMBNAIL_NOT_CREATED', $this->_ambit->getImg('thumb_path', $filename, null, $this->catid)).'<br />';
      $this->debug         = true;

      return false;
    }

    $thumbfilesize       = filesize($this->_ambit->getImg('thumb_path', $filename, null, $this->catid)) / 1000; //KB
    $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_THUMBNAIL_CREATED', $thumbfilesize).'<br />';

    // Optionally create detail image
    $detail_image_created = false;
    if(
      !$this->_mainframe->getUserStateFromRequest('joom.upload.create_special_gif', 'create_special_gif', false, 'bool')
      )
    {
      // Create new detail image
      $return = JoomIMGtools::resizeImage($this->_debugoutput,
                                          $source,
                                          $this->_ambit->getImg('img_path', $filename, null, $this->catid),
                                          $this->_config->get('jg_resizetomaxwidth'),
                                          $this->_config->get('jg_maxwidth'),
                                          $this->_config->get('jg_maxheight'),
                                          $this->_config->get('jg_thumbcreation'),
                                          $this->_config->get('jg_picturequality'),
                                          false,
                                          $angle,
                                          $this->_config->get('jg_detailautorot'),
                                          false,
                                          true,
                                          false
                                         );
      if(!$return)
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_DETIMG_NOT_CREATED', $this->_ambit->getImg('img_path', $filename, null, $this->catid)).'<br />';
        $this->debug        = true;

        return false;
      }

      $detailfilesize       = filesize($this->_ambit->getImg('img_path', $filename, null, $this->catid)) / 1000; //KB
      $this->_debugoutput  .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_DETIMG_CREATED', $detailfilesize).'<br />';
      $detail_image_created = true;
    }

    $delete_original  = $this->_mainframe->getUserStateFromRequest('joom.upload.delete_original', 'original_delete', false, 'bool');
    $delete_original  = (
                            ($this->_site && $this->_config->get('jg_delete_original_user') == 1)
                        ||  ($this->_site && $this->_config->get('jg_delete_original_user') == 2 && $delete_original)
                        ||  (!$this->_site && $this->_config->get('jg_delete_original') == 1)
                        ||  (!$this->_site && $this->_config->get('jg_delete_original') == 2 && $delete_original)
                        );

    if(   ($delete_original && !$is_in_original && $delete_source)
      ||  ($delete_original && $is_in_original)
      )
    {
      if($detail_image_created)
      {
        // Remove image from originals if chosen in backend
        if(JFile::delete($source))
        {
          $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_ORIGINAL_DELETED').'<br />';
        }
        else
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_DELETING_ORIGINAL', $this->_ambit->getImg('orig_path', $filename, null, $this->catid)).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'<br />';
          $this->debug         = true;

          return false;
        }
      }
      else
      {
        // Move original image to detail images folder if original image shall be deleted and detail image wasn't resized
        $return = JFile::move($source, $this->_ambit->getImg('img_path', $filename, null, $this->catid));
        if(!$return)
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_MOVING', $this->_ambit->getImg('img_path', $filename, null, $this->catid)).'<br />';
          $this->debug         = true;

          return false;
        }
      }
    }
    else
    {
      if(!$detail_image_created)
      {
        // Copy original image into detail images folder if original image shouldn't be deleted and detail image wasn't resized
        $return = JFile::copy($source, $this->_ambit->getImg('img_path', $filename, null, $this->catid));
        if(!$return)
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_COPYING', $this->_ambit->getImg('img_path', $filename, null, $this->catid)).'<br />';
          $this->debug         = true;

          return false;
        }

        if($delete_original && !$is_in_original && !$delete_source)
        {
          if(JFile::delete($source))
          {
            $this->_debugoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_ORIGINAL_DELETED').'<br />';
          }
          else
          {
            $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_DELETING_ORIGINAL', $this->_ambit->getImg('orig_path', $filename, null, $this->catid)).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'<br />';
            $this->debug         = true;

            return false;
          }
        }
      }
    }

    // Set permissions of detail image
    if($detail_image_created)
    {
      $return = JoomFile::chmod($this->_ambit->getImg('img_path', $filename, null, $this->catid), '0644');
      /*if(!$return)
      {
        $this->_debugoutput .= $this->_ambit->getImg('img_path', $filename, null, $this->catid).' '.JText::_('COM_JOOMGALLERY_COMMON_CHECK_PERMISSIONS').'<br />';
        $this->debug         = true;

        return false;
      }*/
    }

    if(!$delete_original && !$is_in_original && !$delete_source)
    {
      // Copy source file to orginal images folder if original image shouldn't be deleted and if it's not already there
      $return = JFile::copy($source, $this->_ambit->getImg('orig_path', $filename, null, $this->catid));
      if(!$return)
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_COPYING', $this->_ambit->getImg('orig_path', $filename, null, $this->catid)).'<br />';
        $this->debug         = true;

        return false;
      }
    }
    else
    {
      if(!$delete_original && !$is_in_original && $delete_source)
      {
        // Move source file to orginal images folder if original image shall be deleted and if it's not already there
        $return = JFile::move($source, $this->_ambit->getImg('orig_path', $filename, null, $this->catid));
        if(!$return)
        {
          $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_PROBLEM_MOVING', $this->_ambit->getImg('orig_path', $filename, null, $this->catid)).'<br />';
          $this->debug         = true;

          return false;
        }
      }
    }

    // Rotate original image if needed
    if(!$delete_original && $this->_config->get('jg_origautorot'))
    {
      $return = JoomIMGtools::rotateImage($this->_debugoutput,
                                          $this->_ambit->getImg('orig_path', $filename, null, $this->catid),
                                          $this->_ambit->getImg('orig_path', $filename, null, $this->catid),
                                          $this->_config->get('jg_thumbcreation'),
                                          $this->_config->get('jg_originalquality'),
                                          $angle,
                                          $this->_config->get('jg_origautorot'),
                                          true,
                                          true
                                         );
      if(!$return)
      {
        $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_ORIGINAL_NOT_ROTATED', '').'<br />';
        //$this->debug = true;
      }

      $origfilesize        = filesize($this->_ambit->getImg('orig_path', $filename, null, $this->catid)) / 1000; //KB
      $this->_debugoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_ORIGIMG_CREATED', $origfilesize).'<br />';
    }

    return true;
  }

  /**
   * Creates the database entry for a successfully uploaded image
   *
   * @param   object  $row             The JTable object of the images table to work with
   * @param   string  $origfilename    The original file name of the uploaded image
   * @param   string  $newfilename     The new file name for the image
   * @param   string  $tag             The extension of the uploaded image
   * @param   int     $serial          The counter for the numbering of the image titles
   * @param   array   $overridevalues  Values to store in database, e.g. from metata dat
   * @return  boolean True on success, false otherwise
   * @since   1.5.7
   */
  protected function registerImage($row, $origfilename, $newfilename, $tag, $serial = null, $overridevalues = null)
  {
    // Get the specified image information (either from session or from post)
    $old_info = $this->_mainframe->getUserState('joom.upload.post');
    $cur_info = (!is_null($old_info)) ? $old_info : array();
    $new_info = JRequest::get('post');

    // The use of different post variables for the image description is necessary for the editor form fields to work properly
    // in the frontend upload view when using multiple upload methods
    $imgtext = 'imgtext';
    if($this->_site && ($this->type == 'single' || $this->type == 'batch' || $this->type == 'java'))
    {
      $imgtexttmp = $this->type . '-' . $imgtext;
      if(isset($new_info[$imgtexttmp]))
      {
        $imgtext = $imgtexttmp;
      }
    }

    if(isset($new_info[$imgtext]))
    {
      $new_info['imgtext'] = JComponentHelper::filterText($this->_mainframe->input->post->get($imgtext, '', 'raw'));
    }

    // Prevent setting access level in frontend
    if(isset($new_info['access']) && $this->_site)
    {
      unset($new_info['access']);
    }

    // Save the new value only if it was set in this request
    if(count($new_info))
    {
      $this->_mainframe->setUserState('joom.upload.post', $new_info);
      $data = $new_info;
    }
    else
    {
      $data = $cur_info;
    }

    if(!$row->bind($data))
    {
      $this->_debugoutput .= $row->getError();
      $this->debug        = true;
      return false;
    }

    // Image title
    if( ($this->_site && $this->_config->get('jg_useruseorigfilename'))
      ||
        (!$this->_site && $this->_config->get('jg_useorigfilename'))
      )
    {
      $taglength      = strlen($tag);
      $filenamelength = strlen($origfilename);
      $row->imgtitle  = substr($origfilename, -$filenamelength, -$taglength - 1);
    }

    // Add counter number if set in backend
    if(!is_null($serial))
    {
      $imgname_separator  = JText::_('COM_JOOMGALLERY_UPLOAD_IMAGENAME_SEPARATOR');
      if($imgname_separator == 'space')
      {
        $imgname_separator = ' ';
      }

      $row->imgtitle = $row->imgtitle.$imgname_separator.$serial;
    }

    // Owner
    if($this->_site)
    {
      $row->owner   = $this->_user->get('id');
    }
    else
    {
      $row->owner   = 0;
    }

    // Date
    $date           = JFactory::getDate();
    $row->imgdate   = $date->toSQL();

    // Check for override data
    if($this->_config->get('jg_replaceimgtitle') > 0 && $overridevalues["imgtitle"])
    {
      $row->imgtitle = $overridevalues["imgtitle"];
    }
    if($this->_config->get('jg_replaceimgtext') > 0 && $overridevalues["imgtext"])
    {
      $row->imgtext = $overridevalues["imgtext"];
    }
    if($this->_config->get('jg_replaceimgdate') > 0  && $overridevalues["imgdate"])
    {
      $row->imgdate = $overridevalues["imgdate"];
    }
    if($this->_config->get('jg_replaceimgauthor') > 0  && $overridevalues["imgauthor"])
    {
      $row->imgauthor = $overridevalues["imgauthor"];
    }
    if($this->_config->get('jg_replacemetakey') > 0  && $overridevalues["metakey"])
    {
      $row->metakey = $overridevalues["metakey"];
    }
    if($this->_config->get('jg_replacemetadesc') > 0  && $overridevalues["metadesc"])
    {
      $row->metadesc = $overridevalues["metadesc"];
    }

    // Check whether images are approved directly if we are in frontend
    if($this->_site && $this->_config->get('jg_approve') == 1)
    {
      $row->approved = 0;
    }
    else
    {
      $row->approved = 1;
    }

    $row->imgfilename  = $newfilename;
    $row->imgthumbname = $newfilename;
    $row->useruploaded = intval($this->_site);
    $row->ordering     = $this->_getOrdering($row);

    if(!$row->check())
    {
      $this->_debugoutput .= $row->getError().'<br />';
      $this->debug        = true;
      return false;
    }

    if(!$row->store())
    {
      $this->_debugoutput .= $row->getError().'<br />';
      $this->debug        = true;
      return false;
    }

    return true;
  }

  /**
   * Analyses an error code and returns its text
   *
   * @param   int     $uploaderror  The errorcode
   * @return  string  The error message
   * @since   1.0.0
   */
  protected function checkError($uploaderror)
  {
    // Common PHP errors
    $uploadErrors = array(
      1 => JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_PHP_MAXFILESIZE'),
      2 => JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_HTML_MAXFILESIZE'),
      3 => JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_PARTLY_UPLOADED'),
      4 => JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_FILE_NOT_UPLOADED')
    );

    if(in_array($uploaderror, $uploadErrors))
    {
      return JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_CODE', $uploadErrors[$uploaderror]);
    }
    else
    {
      return JText::sprintf('COM_JOOMGALLERY_UPLOAD_ERROR_CODE', JText::_('COM_JOOMGALLERY_UPLOAD_ERROR_UNKNOWN'));
    }
  }

  /**
   * Method to check whether a category exists and to get the owner it
   *
   * @param   int     The category ID
   * @return  object  The owner of the category and a flag (existent) if it exists
   * @since   2.0
   */
  protected function getCategory($catid)
  {
    $query = $this->_db->getQuery(true)
          ->select('cid, owner')
          ->from(_JOOM_TABLE_CATEGORIES)
          ->where('cid = '.$catid);
    $this->_db->setQuery($query);
    return $this->_db->loadObject();
  }

  /**
   * Method to get the values from image data to override the defaults
   *
   * @param   string  readfile        The image file to read
   * @return  array   overridevalues  The meta data from the image if exists
   * @since   3.4
   */
  protected function getOverrideValues($readfile, $origfilename)
  {
    $overridevalues = array(
      "imgtitle"  => null,
      "imgtext"   => null,
      "imgdate"   => null,
      "imgauthor" => null,
      "metakey"   => null,
      "metadesc"  => null
    );

    if(  $this->_config->get('jg_replaceimgtitle') > 0
      || $this->_config->get('jg_replaceimgtext') > 0
      || $this->_config->get('jg_replaceimgdate') > 0
      || $this->_config->get('jg_replaceimgauthor') > 0
      || $this->_config->get('jg_replacemetakey') > 0
      || $this->_config->get('jg_replacemetadesc') > 0 )
    {
      $filter        = JFilterInput::getInstance();
      $metaWarning   = false;
      $tag           = strtolower(JFile::getExt($readfile));
      $warningoutput = '';

      if(!($tag == 'jpg' || $tag == 'jpeg' || $tag == 'jpe' || $tag == 'jfif'))
      {
        // Check for the right file-format, else throw warning
        if($this->_config->get('jg_replaceshowwarning') > 0)
        {
          $warningoutput .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_WRONGFILEFORMAT').'<br />';
          $metaWarning    = true;
        }
      }
      else
      {
        // Read the metadata from the image
        $metadata = $this->readMetaData($readfile);

        // Replacement with metadata according to settings
        if($this->_config->get('jg_replaceimgtitle') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replaceimgtitle'))))
          {
            $overridevalues["imgtitle"] = $filter->clean($metaDataValue, 'STRING');
            $this->_debugoutput        .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_IMGTITLE').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACE', $this->getMetaName($this->_config->get('jg_replaceimgtitle'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        if($this->_config->get('jg_replaceimgtext') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replaceimgtext'))))
          {
            $overridevalues["imgtext"] = $filter->clean($metaDataValue, 'HTML');
            $this->_debugoutput       .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_IMGTEXT').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACE', $this->getMetaName($this->_config->get('jg_replaceimgtext'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        if($this->_config->get('jg_replaceimgdate') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replaceimgdate'))))
          {
            $overridevalues["imgdate"] = $filter->clean($metaDataValue, 'STRING');
            $this->_debugoutput       .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_IMGDATE').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACEIMGDATE', $this->getMetaName($this->_config->get('jg_replaceimgdate'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        if($this->_config->get('jg_replaceimgauthor') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replaceimgauthor'))))
          {
            $overridevalues["imgauthor"] = $filter->clean($metaDataValue, 'STRING');
            $this->_debugoutput         .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_IMGAUTHOR').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACE', $this->getMetaName($this->_config->get('jg_replaceimgauthor'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        if($this->_config->get('jg_replacemetakey') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replacemetakey'))))
          {
            $overridevalues["metakey"] = $filter->clean($metaDataValue, 'STRING');
            $this->_debugoutput       .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_METAKEYS').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACE', $this->getMetaName($this->_config->get('jg_replacemetakey'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        if($this->_config->get('jg_replacemetadesc') > 0)
        {
          if(false !== ($metaDataValue = $this->getMetaDataValue($metadata, $this->_config->get('jg_replacemetadesc'))))
          {
            $overridevalues["metadesc"] = $filter->clean($metaDataValue, 'STRING');
            $this->_debugoutput        .= JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_METADESC').'<br />';
          }
          else
          {
            if($this->_config->get('jg_replaceshowwarning') > 0)
            {
              $warningoutput .= JText::sprintf('COM_JOOMGALLERY_UPLOAD_OUTPUT_WARNING_REPLACE', $this->getMetaName($this->_config->get('jg_replacemetadesc'))).'<br />';
              $metaWarning    = true;
            }
          }
        }

        // Hint for the metadata replacement in warningoutput
        if($metaWarning == true && $this->_config->get('jg_replaceshowwarning') == 2)
        {
          $warningoutput .= '<br />'.JText::_('COM_JOOMGALLERY_UPLOAD_OUTPUT_UPLOAD_REPLACE_METAHINT').'<br />';
        }
      }

      // If there are warnings to show placement of a header and footer to the warningoutput
      if($metaWarning == true && ($this->type == 'ftp' || $this->type == 'single' || $this->type == 'batch') && $this->_config->get('jg_replaceshowwarning') > 0)
      {
        // Header of the metadata replacement warningoutput
        $warningoutput  = JText::_('COM_JOOMGALLERY_COMMON_IMAGE').': '.$origfilename . ' (' . basename($readfile).')<br /><br />' . $warningoutput;
        // Footer of the metadata replacement warningoutput
        $warningoutput .= '<hr />';
      }

      $this->_warningoutput .= $warningoutput;
    }

    return $overridevalues;
  }

  /**
   * Method to read MetaData from image
   *
   * @param   string  readfile  The image file to read
   * @return  array   return    The array with all meta data from the image if exists
   * @since   3.4
   */
  protected function readMetaData($readfile = Null)
  {
    $return = array();

    // Check the installation of Exif
    $checkexif = false;

    if(extension_loaded('exif') && function_exists('exif_read_data'))
    {
      $checkexif = true;
    }

    if($readfile && $checkexif)
    {
      // Read EXIF data
      $returnexif = exif_read_data($readfile);

      if($returnexif)
      {
        $return[] = $returnexif;
      }
    }

    // Get IPTC data
    $size = getimagesize($readfile, $info);

    if(isset($info['APP13']))
    {
      $return[] = iptcparse($info['APP13']);
    }

    return $return;
  }


  /**
   * Method to extract the value from metadata array
   *
   * @param   array   metadata_array  Array with all metadata
   * @param   string  configoption    Determines which value should be read from metadata
   * @return  mixed   return          The metadata from the image if exists, false otherwise
   * @since   3.4
   */
  protected function getMetaDataValue($metadata_array, $configoption = Null)
  {
    $return = false;

    if($metadata_array)
    {
      $separator = ', ';

      if(array_key_exists($configoption, $this->exif_config_array['IFD0']))
      {
        $attribute = $this->exif_config_array['IFD0'][$configoption]['Attribute'];

        if(isset($metadata_array[0][$attribute]))
        {
          $return = $metadata_array[0][$attribute];
        }
      }
      elseif(array_key_exists($configoption, $this->exif_config_array['EXIF']))
      {
        $attribute = $this->exif_config_array['EXIF'][$configoption]['Attribute'];

        if($attribute == 'UserComment')
        {
          if(isset($metadata_array[0]['COMPUTED'][$attribute]))
          {
            $return = $metadata_array[0]['COMPUTED'][$attribute];
          }
        }
        else
        {
          if(isset($metadata_array[0][$attribute]))
          {
            $return = $metadata_array[0][$attribute];
          }
        }
      }
      elseif(array_key_exists($configoption, $this->iptc_config_array['IPTC']))
      {
        $imm = $this->iptc_config_array['IPTC'][$configoption]['IMM'];
        $imm = str_replace(':', '#', $imm);

        if(isset($metadata_array[1][$imm]))
        {
          $return = implode($separator, $metadata_array[1][$imm]);
        }
      }
    }

    return $return;
  }

  /**
   * Method to extract the name of the metadata field, chosen in configuration manager for a specific value
   *
   * @param   int     fieldNR Number of the chosen metadata field
   * @return  string  string  The name of the chosen metadata field
   * @since   3.4
   */
  protected function getMetaName($fieldNR)
  {
    $string = '';

    if(array_key_exists($fieldNR,$this->exif_config_array['IFD0']))
    {
      $string = $this->exif_config_array['IFD0'][$fieldNR]['Name'] . ' (' . JText::_('COM_JOOMGALLERY_CONFIG_GS_TAB_BACKEND_REPLACEVALUES_EXIF') . ')';
    }
    elseif(array_key_exists($fieldNR,$this->exif_config_array['EXIF']))
    {
      $string = $this->exif_config_array['EXIF'][$fieldNR]['Name'] . ' (' . JText::_('COM_JOOMGALLERY_CONFIG_GS_TAB_BACKEND_REPLACEVALUES_EXIF') . ')';
    }
    elseif(array_key_exists($fieldNR,$this->iptc_config_array['IPTC']))
    {
      $string = $this->iptc_config_array['IPTC'][$fieldNR]['Name'] . ' (' . JText::_('COM_JOOMGALLERY_CONFIG_GS_TAB_BACKEND_REPLACEVALUES_IPTC') . ')';
    }

    return $string;
  }
}
