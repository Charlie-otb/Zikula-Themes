<br />
<script type="text/javascript">
    // <![CDATA[
    var bytesused = Zikula.__f('%s characters out of 4,294,967,295','#{chars}','module_News');
    // ]]>
</script>
<div class="post">
<div class="post_title"><h2>{$info.catandtitle|safehtml}</h2></div>
<div class="post_date">{gt text="Posted by " domain="theme_emplode"}&nbsp;{$info.contributor} {gt text="Posted on" domain="theme_emplode"}&nbsp;{$info.from|dateformat:'datetimebrief'}</div>
<div id="news_body" class="news_body">
    {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
    <div class="news_photo news_thumbs" style="float:{$modvars.News.picupload_article_float}">
        <a href="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-norm.jpg" rel="imageviewer[sid{$info.sid}]">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb2.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title|safehtml}" /></a>
    </div>
    {/if}
	</div>
<div class="post_body">{$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}
{$preformat.bodytext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}</div>
{if $preformat.notes neq ''}
<span id="news_notes" class="news_meta">{$preformat.notes|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}</span>
{/if}
<br />
<div class="post_meta">{gt text="Filed under" domain="theme_emplode"}:{$preformat.category}&nbsp;&nbsp;
{nocache}
<div id="news_editlinks">{articleadminlinks sid=$info.sid}</div>
{if $modvars.News.enableajaxedit}
<div id="news_editlinks_ajax" class="hidelink">{articleadminlinks sid=$info.sid page=$page type='ajax'}</div>
{/if}
{/nocache}
{$preformat.print}
        {if $modvars.News.pdflink}
        <span class="text_separator">|</span>
        <a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank">PDF <img src="modules/News/images/pdf.gif" width="16" height="16" alt="PDF" /></a>
        {/if}</div>
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
	{* the next code is to display the pager *}
{pager rowcount=$pager.numitems limit=$pager.itemsperpage posvar='page'}	
</div>





