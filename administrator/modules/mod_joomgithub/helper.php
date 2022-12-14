<?php
/**
 * @version    1.0.0
 * @package    Mod_JoomGitHub
 * @author     Manuel Häusler <tech.spuur@quickline.com>
 * @copyright  2013 Ben Tasker . All rights reserved.
 * @copyright  2021 Manuel Häusler . All rights reserved.
 * @license    GNU General Public License Version 2 oder später; siehe LICENSE.txt
 * @source     https://github.com/bentasker/mod_bgithub_feed
 */

// no direct access
defined('_JEXEC') or die;

class modBGitHubHelper
{

    function setparams($params)
    {
        $this->params = $params;
    }

    function getCommits()
    {
        $branch = $this->params->get('Branch');
        $owner  = $this->params->get('Owner');
        $repo   = $this->params->get('repo');
        $stat   = "?sha=$branch";
        $uri    = "https://api.github.com/repos/$owner/$repo/commits$stat";
        $type   = 'commits'.$owner.$repo.$branch;

        return $this->getData($uri,$type);
    }

    function getUsersRepos($user)
    {
        $uri  = "https://api.github.com/users/$user/repos";
        $type = 'userrepos-'.$user;

        return $this->getData($uri,$type);
    }

    function getUser($user)
    {
        $uri  = "https://api.github.com/users/$user";
        $type ="user-".$user;

        return $this->getData($uri,$type);
    }

    function getIssues($status = 'open',$sort='updated',$dir='desc',$labels = null)
    {
        $owner = $this->params->get('Owner');
        $repo  = $this->params->get('repo');
        $stat  = '';
        $stat  = "?state=$status&sort=$sort&direction=$dir";

        if (!empty($labels))
        {
            $stat .= "&labels=$labels";
        }

        $uri = "https://api.github.com/repos/$owner/$repo/issues$stat";
        $type = 'issues_'.$owner.$repo.$status.$sort.$dir."_labels-".str_replace(",","",$labels);

        return $this->getData($uri,$type);
    }

    function getData($uri,$type)
    {
        $cachetime = $this->params->get('shortcache');
        if ($this->params->get('CachingEnabled'))
        {
            // Get the config object from factory
            $conf = JFactory::getConfig();

            // Get the current cachetime value - If statement exists because function name differs in J3
    	    if (method_exists($conf,'getValue'))
            {
                $oldcachetime = $conf->getValue('config.cachetime');
    	        $setfn="setValue";
    	    }
            else
            {
            	$oldcachetime = $conf->get('config.cachetime');
            	$setfn="set";
    	    }

    	    // Set the cache time to 30 mins
            $conf->$setfn('config.cachetime', $cachetime);
            // Get the Cache object
            $cache = JFactory::getCache('mod_bgithub_'.$type, 'output');
            // Enable caching (if disabled in global configuration)
            $cache->setCaching( 1 );
            // Try to get the results from cache
            if (!($json = $cache->get('mod_bgithub_'.$type."_json")))
            {
                if ($json = $this->place_request($uri))
                {
                    // Store the data in cache
                    if (!$cache->store($json, 'mod_bgithub_'.$type."_json"))
                    {
                        // If storing in cache failed then we will return the error
                        $error = 'cache';
                    }
                }
                else
                {
                    $error = 'Could not retrieve';
                }
            }

            // Reset the cachetime
            $conf->$setfn('config.cachetime', $oldcachetime);

            return $json;

        }
        else
        {
            // Caching Disabled, just place the request
            return $this->place_request($uri);
        }
    }

    function place_request($uri)
    {
        unset($this->result);

        // Check whether we can use File or if we need to resort to Curl
        // Deprecated - GitHub's API changes mean we need to send a user-agent otherwise we'll receive a 403
        //if (ini_get('allow_url_fopen'))
        //{
            //$results = implode("",$this->placefilerequest($uri));
        //}
        //else
        //{
            $results = $this->placecurlrequest($uri);
        //}

        $this->result = json_decode($results);

        return $this->result;
    }

    function placefilerequest($uri)
    {
        $results = file("$uri");

        return $results;
    }

    function placecurlrequest($uri)
    {
        $ch = curl_init("$uri");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch,CURLOPT_USERAGENT,'mod_GitHub Feed Joomla Extension');
        $data = curl_exec($ch);

        curl_close($ch);

        return $data;
    }
}
