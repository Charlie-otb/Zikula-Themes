<br />
<div class="post">
<div class="post_title"><h2>{$preformat.title}</h2></div>
<div class="post_date">{gt text="Posted by " domain="theme_emplode"}&nbsp; <a href="{$links.informant}">{$info.informant}</a> {gt text="Posted on" domain="theme_emplode"}&nbsp;{$info.briefdatetime}</div>
<div class="post_body">{$preformat.hometext}{$preformat.bodytext}</div>
{if $preformat.notes neq ''}
<p id="news_notes" class="news_meta">{$preformat.notes}</p>
{/if}
<br />
<div class="post_meta">{gt text="Filed under" domain="theme_emplode"}:{$preformat.category}&nbsp;&nbsp;{articleadminlinks sid=$info.sid}</div>
</div>





