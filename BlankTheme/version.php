<?php 
/**
 * Zikula Application Framework
 *
 * @copyright  (c) 2007, Mateo Tibaquira
 * @link       http://www.blanktheme.org
 * @license    GNU/GPL - http://www.gnu.org/copyleft/gpl.html
 * @abstract   Blank theme to develop new themes with ease
 * @version    $Id: version.php 486 2010-09-20 23:42:32Z mateo $
 */


$dom = ZLanguage::getThemeDomain('BlankTheme');

$themeversion['name']           = 'BlankTheme';
$themeversion['displayname']    = __('BlankTheme', $dom);
$themeversion['description']    = __('Theme development framework for Zikula', $dom);
$themeversion['version']        = '1.1';

$themeversion['author']         = 'BlankTheme Team converted for Zikula Version 1.3.x by Charlie';
$themeversion['contact']        = 'http://www.blanktheme.org / http://www.zikula-themes.de';
$themeversion['official']       = '0';
$themeversion['regid']          = '0';
$themeversion['admin']          = 1;
$themeversion['user']           = 1;
$themeversion['system']         = 0;
$themeversion['changelog']      = 'docs/changelog.txt';
$themeversion['credits']        = 'docs/credits.txt';
$themeversion['help']           = 'docs/help.txt';
$themeversion['license']        = 'docs/license.txt';
$themeversion['xhtml']          = true;

$themeversion['extra']          = array('BlankTheme' => '1.0',
                                        'YAML'       => '3.2.1');
