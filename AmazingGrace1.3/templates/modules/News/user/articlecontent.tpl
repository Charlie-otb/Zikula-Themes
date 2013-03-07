<script type="text/javascript">
    // <![CDATA[
    var bytesused = Zikula.__f('%s characters out of 4,294,967,295','#{chars}','module_News');
    // ]]>
</script>
<div class="entry">
<div class="entrytitle_wrap">
<div class="entrydate"><div class="dateMonth">{$info.from|dateformat:'%b'}</div><div class="dateDay">{$info.from|dateformat:'%d'}</div>  </div>
<div class="entrytitle">  
<h1>{$info.title|safehtml}</h1> 
</div>
{nocache}
<div id="news_editlinks">{articleadminlinks sid=$info.sid}</div>
{if $modvars.News.enableajaxedit}
<div id="news_editlinks_ajax" class="hidelink">{articleadminlinks sid=$info.sid page=$page type='ajax'}</div>
{/if}
{/nocache}
<div class="endate">{gt text='Contributed'} {gt text='by %1$s on %2$s' tag1=$info.contributor tag2=$info.from|dateformat:'datebrief'}</div></div>

<div class="entrybody">
<div id="news_body" class="news_body">
    {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
    <div class="news_photo news_thumbs" style="float:{$modvars.News.picupload_article_float}">
        <a href="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-norm.jpg" rel="imageviewer[sid{$info.sid}]">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb2.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title|safehtml}" /></a>
    </div>
    {/if}
    
        {$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}
    
    {$preformat.bodytext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}

    <p class="news_footer">
        {$preformat.print}
        {if $modvars.News.pdflink}
        <span class="text_separator">|</span>
        <a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank">PDF <img src="modules/News/images/pdf.gif" width="16" height="16" alt="PDF" /></a>
        {/if}
    </p>
    
    {if $modvars.News.picupload_enabled AND $info.pictures gt 1}
    <div class="news_pictures"><div><strong>{gt text='Picture gallery'}</strong></div>
        {section name=counter start=1 loop=$info.pictures step=1}
            <div class="news_photoslide news_thumbsslide">
                <a href="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-{$smarty.section.counter.index}-norm.jpg" rel="imageviewer[sid{$info.sid}]"><span></span>
                <img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-{$smarty.section.counter.index}-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1=$smarty.section.counter.index tag2=$info.title}" /></a>
            </div>
        {/section}
    </div>
    {/if}
</div>

{if $preformat.notes neq ''}
<span id="news_notes" class="news_meta">{$preformat.notes|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}</span>
{/if}

</div>
<div class="entrymeta">
<div class="postinfo"> 
<span class="filedto">{foreach name='categorylinks' from=$preformat.categories item='categorylink'}
{gt text='Filed under:'}{$categorylink}
{if $smarty.foreach.categorylinks.last neq true}<span class="text_separator"> | </span>{/if}
{/foreach}</span>
<span class="commentslink"><!--[$preformat.comment]--></span>  
</div>
</div>                
</div>
{* the next code is to display the pager *}
{pager rowcount=$pager.numitems limit=$pager.itemsperpage posvar='page'}



