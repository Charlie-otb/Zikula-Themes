
{ajaxheader ui=true imageviewer="true"}
<div class="entry">
<div class="entrytitle_wrap">
<div class="entrydate"><div class="dateMonth">{$info.from|dateformat:'%b'}</div><div class="dateDay">{$info.from|dateformat:'%d'}</div>  </div>
<div class="entrytitle">  
<h1>{$preformat.title|safehtml}</h1> 
</div>
{nocache}
<div id="news_editlinks">{articleadminlinks sid=$info.sid}</div>
{if $modvars.News.enableajaxedit}
<div id="news_editlinks_ajax" class="hidelink">{articleadminlinks sid=$info.sid page=$page type='ajax'}</div>
{/if}
{/nocache}
<div class="endate">{gt text='Contributed'} {gt text='by %1$s on %2$s' tag1=$info.contributor tag2=$info.from|dateformat:'datebrief'}</div></div>
<div class="entrybody">
<div class="news_body">
        {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
        <div class="news_photoindex news_thumbsindex" style="float:{$modvars.News.picupload_index_float}">
            {if $modvars.ZConfig.shorturls}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid from=$info.from urltitle=$info.urltitle}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {else}
                 <a href="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-norm.jpg" rel="imageviewer[sid{$info.sid}]">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb2.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title|safehtml}" /></a>
            {/if}
        </div>
        {/if}
		</div>
    
        {$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}
    
    </ br>
        <p>{$preformat.readmore}&nbsp;</p>
</div>
<div class="entrymeta">
<div class="postinfo">

<span class="filedto">{if !empty($info.categories)}
        {gt text='Filed under:'}
        {foreach name='categorylinks' from=$preformat.categories item='categorylink'}
        {$categorylink}{if $smarty.foreach.categorylinks.last neq true},&nbsp;{/if}
        {/foreach}
        <span class="text_separator">|</span>
        {/if}</span>
<span class="commentslink"><!--[$preformat.comment]--></span>  
<span class="commentslink">{$preformat.print}
        {checkpermission component="News::" instance=".*" level="ACCESS_READ" assign="readaccess"}
        {if $modvars.News.pdflink && $readaccess}
        <span class="text_separator">|</span>
        <a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank">PDF <img src="modules/News/images/pdf.gif" width="16" height="16" alt="PDF" /></a>
        {/if}</span> 
</div>
</div>                
</div>