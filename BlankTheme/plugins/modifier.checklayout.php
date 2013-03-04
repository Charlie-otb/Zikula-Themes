<?php
/**
 * Zikula Application Framework
 *
 * @copyright  (c) 2008, Mateo Tibaquira
 * @link       http://www.blanktheme.org
 * @license    GNU/GPL - http://www.gnu.org/copyleft/gpl.html
 * @version    $Id: modifier.checklayout.php 373 2009-01-25 16:18:31Z mateo $
 */

/**
 * Smarty modifier to implement Theme layout checks in a template
 *
 * available parameters:
 *  - layout       the layout definition under test
 *  - columns      the columns to check
 *
 * Example
 * with $layout = '213_cb2'
 * <!--[if $layout|checklayout:2]-->
 * do some stuff when '2' (left column) column is enabled
 * <!--[/if]-->
 *
 * @author   Mateo Tibaquir�
 * @since    30 Ene 08
 * @param    string   $string     Passed layout with the current definition
 * @param    string   $columns    The column(s) definition to check into the passed layout 
 * @return   bool     true is the columns are inside the $layout, false if not or on an error
 */
function smarty_modifier_checklayout($layout, $columns)
{
    if (empty($layout) || empty($columns)) {
        return false;
    }

    $layout = explode('_', $layout, 2);
    if (strpos($layout[0], (string)$columns) !== false) {
        return true;
    }
    return false;
}
