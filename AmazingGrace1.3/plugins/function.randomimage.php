<?php
// ----------------------------------------------------------------------
// PostNuke Content Management System
// Copyright (C) 2002 by the PostNuke Development Team.
// http://www.postnuke.com/
// ----------------------------------------------------------------------
// Based on:
// PHP-NUKE Web Portal System - http://phpnuke.org/
// Thatware - http://thatware.org/
// ----------------------------------------------------------------------
// LICENSE
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License (GPL)
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// To read the license please visit http://www.gnu.org/copyleft/gpl.html
// ----------------------------------------------------------------------
/**
 * Xanthia plugin
 * 
 * This file is a plugin for Xanthia, the PostNuke implementation of Smarty
 *
 * @package      Xanthia_Templating_Environment
 * @subpackage   Xanthia
 * @version      $Id: function.randomimage.php,v 1.0 2005/09/24 15:02:33 invalidresponse Exp $
 * @author       Devin Hayes
 * @link         http://www.invalidresponse.com 
 * @copyright    Copyright (C) 2005 by Devin Hayes
 * @license      http://www.gnu.org/copyleft/gpl.html GNU General Public License
 */ 

 
/**
 * Smarty function to display random image
 * 
 * Available parameters:
 *   - assign:   If set, the results are assigned to the corresponding variable instead of printed out
 * 
 * Example:
 *   in your Xanthia theme tamplate: <img src="<!--[randomimage]-->" alt="random" />
 * 
 * @author       Devin Hayes
 * @param        array       $params      All attributes passed to this function from the template
 * @param        object      &$smarty     Reference to the Smarty object
 * @return       string      the random image
 */



function smarty_function_randomimage($params, &$smarty) 
{
    extract($params); 
	unset($params);
	
	// change the path if necessary
	$directory = 'themes/AmazingGrace1.3/images';	
	
	// add as many as you like
	$images = array($directory.'/bg-portrait1.jpg',
					$directory.'/bg-portrait2.jpg',
					$directory.'/bg-portrait3.jpg',
					$directory.'/bg-portrait4.jpg',
					$directory.'/bg-portrait5.jpg',
					$directory.'/bg-portrait0.jpg',
					$directory.'/bg-portrait6.jpg',
					$directory.'/bg-portrait7.jpg',
					$directory.'/bg-portrait8.jpg',
					$directory.'/bg-portrait9.jpg'); 
					
	$return = $images[mt_rand(0,count($images)-1)]; 
	
	if (isset($params['assign'])) {
        $smarty->assign($params['assign'], $return);
    } else {    
		return $return;
	}
}
?>