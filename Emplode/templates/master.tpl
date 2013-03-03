{include file="includes/header.tpl"}
<div id="layout_body">
<div id="main_wrapper_outer">
<div id="main_wrapper_inner">
<div class="center_wrapper">
<div class="left" id="main">
<div id="main_content">
{$maincontent}	 
</div>
</div>
<div class="right" id="sidebar">
<div id="sidebar_content">
{blockposition name=left}      
{blockposition name=right} 
</div>
</div>
</div>
<div class="clearer">&nbsp;</div>
</div>
</div>
</div>
{include file="includes/footer.tpl"}