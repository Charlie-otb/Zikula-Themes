{* $Id: home.htm 475 2010-07-07 22:25:18Z mateo $ *}
{* config override *}
{ assign var='current' value='home' }
{ assign var='body'    value='grid' }
{ assign var='layout'  value='123' }

<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{lang}" lang="{lang}" dir="{langdirection}">
{include file='head.tpl'}

<!-- Home template -->
<body id="bt_{$module}" class="{bt_htmloutput section='classesbody'}">
{include file="body/$body.tpl"}
</body>
</html>
