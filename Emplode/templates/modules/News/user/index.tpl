<br />
{ajaxheader ui=true imageviewer="true"}
<div class="post">
<div class="post_title"><h2>{$preformat.title}</h2></div>
<div class="post_date">{gt text="Posted by" domain="theme_emplode"}&nbsp;{$info.contributor|userprofilelink}&nbsp;{gt text="Posted on" domain="theme_emplode"}&nbsp;{$info.from|dateformat:'datetimebrief'}</div>
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
<div class="post_body">{$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}</div>
<br />
<p>{if !empty($preformat.readmore)}
          {$preformat.readmore}
        {/if}&nbsp;</p>

<div class="post_meta">{gt text="Filed under" domain="theme_emplode"} {$preformat.category}&nbsp;{$preformat.commentlink}
{$preformat.print}
        {checkpermission component="News::" instance=".*" level="ACCESS_READ" assign="readaccess"}
        {if $modvars.News.pdflink && $readaccess}
        <span class="text_separator">|</span>
        <a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank">PDF <img src="modules/News/images/pdf.gif" width="16" height="16" alt="PDF" /></a>
        {/if}     </div>
</div>