{* $Id: calendar.htm 466 2010-06-30 16:29:58Z mateo $ *}
{* config override *}
{assign var='body'    value='2col'}
{assign var='layout'  value='1_nc'}

<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{lang}" lang="{lang}" dir="{langdirection}">
{include file='head.tpl'}

<!-- Calendar template -->
<body id="bt_{$module}" class="{bt_htmloutput section='classesbody'}">
{include file="body/$body.tpl"}
</body>
</html>
