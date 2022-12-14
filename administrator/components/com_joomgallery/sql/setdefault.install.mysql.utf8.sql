INSERT IGNORE INTO `#__joomgallery_config`
  VALUES (
  /* id */       1,
  /* group_id */ 1,
  /* ordering */ 1,

  /* ### General settings->path and directories ####*/
  /*jg_pathimages*/         'images/joomgallery/details/',
  /*jg_pathoriginalimages*/ 'images/joomgallery/originals/',
  /*jg_paththumbs*/         'images/joomgallery/thumbnails/',
  /*jg_pathftpupload*/      'administrator/components/com_joomgallery/temp/ftp_upload/',
  /*jg_pathtemp*/           'administrator/components/com_joomgallery/temp/',
  /*jg_wmpath*/             'media/joomgallery/images/',
  /*jg_wmfile*/             'watermark.png',
  /*jg_use_real_paths*/     0,
  /*jg_checkupdate*/        1,

  /* ### General settings->Replacements ####*/
  /*jg_filenamewithjs*/     1,
  /*jg_filenamereplace*/    'Š|S, Œ|O, Ž|Z, š|s, œ|oe, ž|z, Ÿ|Y, ¥|Y, µ|u, À|A, Á|A, Â|A, Ã|A, Ä|AE, Å|A, Æ|A, Ç|C, È|E, É|E, Ê|E, Ë|E, Ì|I, Í|I, Î|I, Ï|I, Ð|D, Ñ|N, Ò|O, Ó|O, Ô|O, Õ|O, Ö|OE, Ø|O, Ù|U, Ú|U, Û|U, Ü|UE, Ý|Y, à|a, á|a, â|a, ã|a, ä|ae, å|a, æ|a, ç|c, è|e, é|e, ê|e, ë|e, ì|i, í|i, î|i, ï|i, ð|o, ñ|n, ò|o, ó|o, ô|o, õ|o, ö|oe, ø|o, ù|u, ú|u, û|u, ü|ue, ý|y, ÿ|y, ß|ss, ă|a, ş|s, ţ|t, ț|t, Ț|T, Ș|S, ș|s, Ş|S',
  /*jg_replaceimgtitle*/    0,
  /*jg_replaceimgtext*/     0,
  /*jg_replaceimgauthor*/   0,
  /*jg_replaceimgdate*/     0,
  /*jg_replacemetakey*/     0,
  /*jg_replacemetadesc*/    0,
  /*jg_replaceshowwarning*/ 0,


  /* ### General settings->Image Processing ####*/
  /*jg_thumbcreation*/          'gd2',
  /*jg_fastgd2thumbcreation*/   1,
  /*jg_impath*/                 '',
  /*jg_delete_original*/        0,
  /*jg_origautorot*/            0,
  /*jg_originalquality*/        100,
  /*jg_resizetomaxwidth*/       4,
  /*jg_maxwidth*/               400,
  /*jg_maxheight*/              400,
  /*jg_detailautorot*/          0,
  /*jg_picturequality*/         100,
  /*jg_useforresizedirection*/  1,
  /*jg_cropposition*/           2,
  /*jg_thumbwidth*/             133,
  /*jg_thumbheight*/            100,
  /*jg_thumbautorot*/           0,
  /*jg_thumbquality*/           100,

  /* ### General settings->Backend Upload ####*/
  /*jg_uploadorder*/        2,
  /*jg_useorigfilename*/    0,
  /*jg_filenamenumber*/     1,

  /* ### General settings->Messages ####*/
  /*jg_msg_upload_type*/          2,
  /*jg_msg_upload_recipients*/    '-1',
  /*jg_msg_download_type*/        2,
  /*jg_msg_download_recipients*/  '-1',
  /*jg_msg_zipdownload*/          0,
  /*jg_msg_comment_type*/         2,
  /*jg_msg_comment_recipients*/   '-1',
  /*jg_msg_comment_toowner*/      0,
  /*jg_msg_nametag_type*/         2,
  /*jg_msg_nametag_recipients*/   '-1',
  /*jg_msg_nametag_totaggeduser*/ 1,
  /*jg_msg_nametag_toowner*/      0,
  /*jg_msg_report_type*/          2,
  /*jg_msg_report_recipients*/    '-1',
  /*jg_msg_report_toowner*/       0,
  /*jg_msg_rejectimg_type*/       1,
  /*jg_msg_global_from*/          0,

  /* ### Frontend Settings->General Settings (partly, see more below)####*/
  /*jg_realname*/                 0,
  /*jg_contentpluginsenabled*/    1,
  /*jg_itemid*/                   '',

  /* ### General settings->Performance settings ####*/
  /*jg_ajaxcategoryselection*/      0,
  /*jg_disableunrequiredchecks*/    0,
  /*jg_use_listbox_max_user_count*/ 25,
  /*jg_adminsorting*/               0,

  /* ### User Access rights->User upload ####*/
  /*jg_userspace*/                1,
  /*jg_useruploaddefaultcat*/     0,
  /*jg_approve*/                  0,
  /*jg_unregistered_permissions*/ 0,
  /*jg_maxusercat*/               10,
  /*jg_maxuserimage*/             500,
  /*jg_maxuserimage_timespan*/    0,
  /*jg_maxfilesize*/              2000000,
  /*jg_usercatacc*/               1,
  /*jg_usercatthumbalign*/        1,
  /*jg_useruploadsingle*/         1,
  /*jg_maxuploadfields*/          3,
  /*jg_useruploadajax*/           1,
  /*jg_useruploadbatch*/          1,
  /*jg_useruploadjava*/           1,
  /*jg_useruseorigfilename*/      0,
  /*jg_useruploadnumber*/         1,
  /*jg_special_gif_upload*/       1,
  /*jg_delete_original_user*/     2,
  /*jg_newpiccopyright*/          1,
  /*jg_newpicnote*/               1,
  /*jg_redirect_after_upload*/    1,
  /*jg_edit_metadata*/            0,

  /* ### User Access rights->Download ####*/
  /*jg_download*/               1,
  /*jg_download_unreg*/         1,
  /*jg_download_hint*/          1,
  /*jg_downloadfile*/           2,
  /*jg_downloadwithwatermark*/  1,

  /* ### User Access rights->Rating ####*/
  /*jg_showrating*/         1,
  /*jg_maxvoting*/          5,
  /*jg_ratingcalctype*/     0,
  /*jg_ratingdisplaytype*/  0,
  /*jg_ajaxrating*/         0,
  /*jg_votingonlyonce*/     1,
  /*jg_votingonlyreg*/      0,

  /* ### User Access rights->Comments ####*/
  /*jg_showcomment*/      1,
  /*jg_anoncomment*/      1,
  /*jg_namedanoncomment*/ 1,
  /*jg_anonapprovecom*/   1,
  /*jg_approvecom*/       0,
  /*jg_storecommentip*/   0,
  /*jg_bbcodesupport*/    1,
  /*jg_smiliesupport*/    1,
  /*jg_anismilie*/        0,
  /*jg_smiliescolor*/     'grey',

  /* ### User Access rights->Reports ####*/
  /*jg_report_images*/  1,
  /*jg_report_unreg*/   1,
  /*jg_report_hint*/    1,

  /* ### Frontend Settings->General Settings (partly, see more above) ####*/
  /*jg_alternative_layout*/ '',
  /*jg_anchors*/            1,
  /*jg_tooltips*/           1,
  /*jg_dyncrop*/            0,
  /*jg_dyncropposition*/    2,
  /*jg_dyncropwidth*/       100,
  /*jg_dyncropheight*/      100,
  /*jg_hideemptycats*/      0,
  /*jg_skipcatview*/        0,
  /*jg_imgalign*/           0,
  /*jg_showrestrictedcats*/ 1,
  /*jg_showrestrictedhint*/ 1,

  /* ### Frontend Settings->Picture Ordering ####*/
  /*jg_firstorder*/   'ordering ASC',
  /*jg_secondorder*/  'imgdate DESC',
  /*jg_thirdorder*/   'imgtitle DESC',

  /* ### Frontend Settings->Page Title ####*/
  /*jg_pagetitle_cat*/    '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat',
  /*jg_pagetitle_detail*/ '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat - [! COM_JOOMGALLERY_COMMON_IMAGE!]:  #img',

  /* ### Frontend Settings->Header and Footer ####*/
  /*jg_showgalleryhead*/      1,
  /*jg_showpathway*/          1,
  /*jg_completebreadcrumbs*/  1,

  /* --> ### Search ####*/
  /*jg_search*/                     1,
  /*jg_searchengine*/               'joomgallery',
  /*jg_searchcols*/                 1,
  /*jg_searchthumbalign*/           1,
  /*jg_searchtextalign*/            1,
  /*jg_showsearchdownload*/         0,
  /*jg_showsearchfavourite*/        0,
  /*jg_search_report_images*/       0,
  /*jg_showsearcheditorlinks*/      0,

  /*jg_showallpics*/          3,
  /*jg_showallhits*/          1,
  /*jg_showbacklink*/         3,
  /*jg_suppresscredits*/      1,

  /* ### Frontend Settings->User Panel ####*/
  /*jg_showuserpanel*/        1,
  /*jg_showuserpanel_hint*/   1,
  /*jg_showuserpanel_unreg*/  0,
  /*jg_showallpicstoadmin*/   1,
  /*jg_showminithumbs*/       1,

  /* ### Frontend Settings->Popup Functions ####*/
  /*jg_openjs_padding*/               10,
  /*jg_openjs_background*/            '#ffffff',
  /*jg_dhtml_border*/                 '#808080',
  /*jg_show_title_in_popup*/          1,
  /*jg_show_description_in_popup*/    1,
  /*jg_lightbox_speed*/               5,
  /*jg_lightbox_slide_all*/           1,
  /*jg_resize_js_image*/              1,
  /*jg_disable_rightclick_original*/  1,

  /* ### Gallery View->General Settings ####*/
  /*jg_showgallerysubhead*/           1,
  /*jg_showallcathead*/               1,
  /*jg_colcat*/                       3,
  /*jg_catperpage*/                   9,
  /*jg_ordercatbyalpha*/              0,
  /*jg_showgallerypagenav*/           1,
  /*jg_showcatcount*/                 1,
  /*jg_showcatthumb*/                 1,
  /*jg_showrandomcatthumb*/           3,
  /*jg_ctalign*/                      1,
  /*jg_showtotalcatimages*/           1,
  /*jg_showtotalcathits*/             1,
  /*jg_showcatasnew*/                 1,
  /*jg_catdaysnew*/                   7,
  /*jg_showdescriptioningalleryview*/ 1,
  /*jg_uploadicongallery*/            0,
  /*jg_showsubsingalleryview*/        0,

  /* ### Category View->General Settings ####*/
  /*jg_category_rss*/             10,
  /*jg_category_rss_icon*/        'rss',
  /*jg_uploadiconcategory*/       0,
  /*jg_showcathead*/              1,
  /*jg_usercatorder*/             1,
  /*jg_usercatorderlist*/         'date,title',
  /*jg_showcatdescriptionincat*/  1,
  /*jg_showpagenav*/              2,
  /*jg_showpiccount*/             1,
  /*jg_perpage*/                  8,
  /*jg_catthumbalign*/            1,
  /*jg_colnumb*/                  2,
  /*jg_detailpic_open*/           '0',
  /*jg_lightboxbigpic*/           1,
  /*jg_showtitle*/                1,
  /*jg_showpicasnew*/             1,
  /*jg_daysnew*/                  10,
  /*jg_showhits*/                 1,
  /*jg_showdownloads*/            1,
  /*jg_showauthor*/               1,
  /*jg_showowner*/                1,
  /*jg_showcatcom*/               1,
  /*jg_showcatrate*/              1,
  /*jg_showcatdescription*/       1,
  /*jg_showcategorydownload*/     0,
  /*jg_showcategoryfavourite*/    0,
  /*jg_category_report_images*/   0,
  /*jg_showcategoryeditorlinks*/  0,

  /* ### Category View->Sub-Categories ####*/
  /*jg_showsubcathead*/                 1,
  /*jg_showsubcatcount*/                1,
  /*jg_colsubcat*/                      2,
  /*jg_subperpage*/                     8,
  /*jg_showpagenavsubs*/                1,
  /*jg_subcatthumbalign*/               3,
  /*jg_showsubthumbs*/                  2,
  /*jg_showrandomsubthumb*/             3,
  /*jg_showdescriptionincategoryview*/  1,
  /*jg_ordersubcatbyalpha*/             0,
  /*jg_showtotalsubcatimages*/          1,
  /*jg_showtotalsubcathits*/            1,
  /*jg_uploadiconsubcat*/               0,

  /* ### Detail View->General Settings ####*/
  /*jg_showdetailpage*/             1,
  /*jg_disabledetailpage*/          1,
  /*jg_showdetailnumberofpics*/     1,
  /*jg_cursor_navigation*/          1,
  /*jg_disable_rightclick_detail*/  0,
  /*jg_detail_report_images*/       1,
  /*jg_showdetaileditorlinks*/      1,
  /*jg_showdetailtitle*/            1,
  /*jg_showdetail*/                 1,
  /*jg_showdetailaccordion*/        0,
  /*jg_accordionduration*/        300,
  /*jg_accordiondisplay*/           1,
  /*jg_accordionopacity*/           0,
  /*jg_accordionalwayshide*/        0,
  /*jg_accordioninitialeffect*/     1,
  /*jg_showdetaildescription*/      1,
  /*jg_showdetaildatum*/            1,
  /*jg_showdetailhits*/             1,
  /*jg_showdetaildownloads*/        1,
  /*jg_showdetailrating*/           1,
  /*jg_showdetailfilesize*/         1,
  /*jg_showdetailauthor*/           1,
  /*jg_showoriginalfilesize*/       1,
  /*jg_showdetaildownload*/         1,
  /*jg_watermark*/                  0,
  /*jg_watermarkpos*/               9,
  /*jg_watermarkzoom*/              0,
  /*jg_watermarksize*/              15,
  /*jg_bigpic*/                     1,
  /*jg_bigpic_unreg*/               1,
  /*jg_bigpic_open*/                '6',
  /*jg_bbcodelink*/                 3,
  /*jg_showcommentsunreg*/          1,
  /*jg_showcommentsarea*/           2,
  /*jg_send2friend*/                1,

  /* ### Detail View->Motiongallery ####*/
  /*jg_minis*/            1,
  /*jg_motionminis*/      2,
  /*jg_motionminiWidth*/  400,
  /*jg_motionminiHeight*/ 50,
  /*jg_motionminiLimit*/  0,
  /*jg_miniWidth*/        28,
  /*jg_miniHeight*/       28,
  /*jg_minisprop*/        2,

  /* ### Detail View->Nametags ####*/
  /*jg_nameshields*/            0,
  /*jg_nameshields_others*/     1,
  /*jg_nameshields_unreg*/      1,
  /*jg_show_nameshields_unreg*/ 0,
  /*jg_storenametagip*/         0,
  /*jg_nameshields_height*/     10,
  /*jg_nameshields_width*/      6,

  /* ### Detail View->Slideshow Settings ####*/
  /*jg_slideshow*/              1,
  /*jg_slideshow_timer*/        6000,
  /*jg_slideshow_transition*/   0,
  /*jg_slideshow_transtime*/    2000,
  /*jg_slideshow_maxdimauto*/   0,
  /*jg_slideshow_width*/        640,
  /*jg_slideshow_heigth*/       480,
  /*jg_slideshow_infopane*/     0,
  /*jg_slideshow_carousel*/     0,
  /*jg_slideshow_arrows*/       0,
  /*jg_slideshow_repeat*/       0,

  /* ### Detail View->Exif data ####*/
  /*jg_showexifdata*/   0,
  /*jg_showgeotagging*/ 0,
  /*jg_geotaggingkey*/  '',
  /*jg_subifdtags*/     '',
  /*jg_ifdotags*/       '',
  /*jg_gpstags*/        '',

  /* ### Detail View->IPTC data ####*/
  /*jg_showiptcdata*/   0,
  /*jg_iptctags*/       '',

  /* ### Toplists ####*/
  /*jg_showtoplist*/                2,
  /*jg_toplist*/                    12,
  /*jg_topthumbalign*/              1,
  /*jg_toptextalign*/               1,
  /*jg_toplistcols*/                1,
  /*jg_whereshowtoplist*/           0,
  /*jg_showrate*/                   1,
  /*jg_showlatest*/                 1,
  /*jg_showcom*/                    1,
  /*jg_showthiscomment*/            1,
  /*jg_showmostviewed*/             1,
  /*jg_showtoplistdownload*/        0,
  /*jg_showtoplistfavourite*/       0,
  /*jg_toplist_report_images*/      0,
  /*jg_showtoplisteditorlinks*/     0,

  /* ### Favorites ####*/
  /*jg_favourites*/                 1,
  /*jg_favouritesshownotauth*/      0,
  /*jg_maxfavourites*/              0,
  /*jg_zipdownload*/                1,
  /*jg_usefavouritesforpubliczip*/  0,
  /*jg_usefavouritesforzip*/        0,
  /*jg_allimagesofcategory*/        0,
  /*jg_showfavouritesdownload*/     1,
  /*jg_showfavouriteseditorlinks*/  1
  );
