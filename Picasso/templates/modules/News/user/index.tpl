<div class="post">
    <p class="category">{gt text='Filed under' domain='theme_picasso'} {$preformat.category} &nbsp;{gt text='Posted by' domain='theme_picasso'}&nbsp;{$info.contributor} </p>
    <p class="date"><span>{$info.from|dateformat:'%d'}</span>{$info.from|dateformat:'%B'}</p>
	
    <h3>{$preformat.title}</h3>
	
        {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
        <div class="news_photoindex news_thumbsindex" style="float:{$modvars.News.picupload_index_float}">
            {if $modvars.ZConfig.shorturls AND $modvars.ZConfig.shorturlstype eq 0}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid from=$info.from urltitle=$info.urltitle}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {else}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {/if}
        </div>
        {/if}
    <div class="text">
        {$info.hometext}
		</ br>
        <p>{$preformat.readmore}&nbsp;</p>
    </div>
</div>