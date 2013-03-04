{* $Id: head.htm 473 2010-06-30 18:46:46Z mateo $ *}
<head profile="http://www.w3.org/2005/10/profile">

<meta http-equiv="Content-Type" content="application/xhtml+xml; charset={charset}" />
<title>{title}</title>
<meta name="description" content="{slogan}" />
<meta name="keywords" content="{keywords}" />
<meta name="Author" content="{sitename}" />
<meta name="Copyright" content="Copyright (c) {'Y'|date} by {sitename}" />
<meta name="Robots" content="index,follow" />
<meta name="Generator" content="Zikula - www.zikula.org" />

<link rel="alternate" href="{pnmodurl modname='News' type='user' func='view' theme='rss'}" type="application/rss+xml" title="{sitename}" />
<link rel="icon" type="image/x-icon" href="{$imagepath}/favicon.ico" /> {* W3C *}
<link rel="shortcut icon" type="image/ico" href="{$imagepath}/favicon.ico" /> {* IE *}

<!-- pagevars -->

{bt_htmloutput section='head' optimize=false}

</head>
