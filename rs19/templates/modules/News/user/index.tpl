<!--[* For ajax modify and image uploading *]-->
{if $picupload_enabled}
{pnajaxheader imageviewer="true"}
<!--[* if $enableajaxedit]-->
{pnpageaddvar name='javascript' value='modules/News/pnjavascript/multifile.js'}
<!--[/if *]-->
{/if}
<div class="post">
<div class="postheader">
<div class="date shadow">
<span class="day">{$info.from|dateformat:'datebrief'}</span>

</div>
<p class="postinfo">
 <span>{gt text="by" domain="theme_rs19"} {$info.contributor|userprofilelink}</span>
 <span><a href="{$preformat.comment}">{$preformat.commentlink}&nbsp;</a></span>
 <span>{$preformat.category}</span>
 </p>
</div>
<div class="postcontent"><h2>{$preformat.title}</h2>
<div class="news_body">
        {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
        <div class="news_photoindex news_thumbsindex" style="float:{$modvars.News.picupload_index_float}">
            {if $modvars.ZConfig.shorturls}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid from=$info.from urltitle=$info.urltitle}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {else}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {/if}
        </div>
        {/if}
		</div>
 {$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}
<br /> <br />
  <span class="readmore">&nbsp;
 {if !empty($preformat.readmore)}
          {$preformat.readmore}
        {/if}
       </span>
   {$preformat.print}
        {checkpermission component="News::" instance=".*" level="ACCESS_READ" assign="readaccess"}
        {if $modvars.News.pdflink && $readaccess}
        <span class="text_separator">|</span>
        <a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank">PDF <img src="modules/News/images/pdf.gif" width="16" height="16" alt="PDF" /></a>
        {/if}     
  
  </div>
</div>
