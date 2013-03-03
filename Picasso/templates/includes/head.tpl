<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{lang}" dir="{langdirection}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={charset}" />
        <title>{pagegetvar name='title'}</title>
        <meta name="description" content="{$metatags.description}" />
        <meta name="keywords" content="{$metatags.keywords}" />
        <meta http-equiv="X-UA-Compatible" content="chrome=1" />
        {pageaddvar name="stylesheet" value="$stylepath/style.css" media="print,projection,screen"}
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<!--[pnmodurl modname='News' type='user' func='main' theme='RSS']-->" />
{browserhack condition="if IE 8" assign="ieconditional"}<link rel="stylesheet" href="themes/Picasso/style/style_ie.css" type="text/css" media="screen" />{/browserhack}
</head>
<body>
        <div id="siteholder">
            <!-- header -->
            <div id="header" class="z-clearfix">
                <!-- logo -->
                <div id="logo">
                    <h1><a href="<!--[homepage]-->"><!--[sitename]--></a></h1>
                    <h2><!--[slogan]--></h2>
                </div>
                <!-- / logo -->

                <!-- search -->
                <div id="search" class="z-clearfix">
                    <form method="post" id="searchform" action="{pnmodurl modname=Search}">
                        <p><label for="search">search</label><input type="text" value="" name="q" id="search_question" class="search_input" tabindex="1" />
                            <input type="hidden" name="overview" value="1" />
                            <input type="hidden" name="bool" value="AND" />
                            <input type="hidden" name="active_ezcomments" value="1" />
                            <input type="hidden" name="active_Dizkus" value="1" />
                            <input type="hidden" name="active_news" value="1" />
                        <input type="hidden" name="active_users" value="1" /></p>
                        <p><button name="submit" type="submit">{gt text='Submit'}</button></p>
                    </form>
                </div>
                <!-- / search -->

                <!-- nav -->
                <div id="nav">
                    <ul class="z-clearfix">
                        <li class="nav-1 act"><a href="{homepage}">{gt text='Home'}</a></li>
                        <li class="nav-2"><span><a href="{modurl modname='Pages' type='user' func='main'}">{gt text='Pages'}</a></span></li>
                        <li class="nav-3"><a href="{modurl modname='News' type='user' func='main'}">{gt text='News'}</a></li>
                        <li class="nav-4"><a href="{modurl modname='Dizkus' type='user' func='main'}">{gt text='Forum'}</a></li>
                        <li class="nav-5"><a href="{modurl modname='formicula' type='user' func='main'}">{gt text='Contact'}</a></li>
                    </ul>
                </div>
                <!-- / nav -->
            </div>
            <!-- / header -->