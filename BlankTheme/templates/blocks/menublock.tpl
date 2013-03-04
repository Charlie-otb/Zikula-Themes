{* $Id: menublock.htm 480 2010-07-16 13:33:10Z mateo $ *}

<!-- Menu Block Start -->
{if $title neq ''}{* Display title if there is one *}
<h4 class="pn-block-title">
    <span>{$title}</span>
</h4>
{/if}
<div class="pn-block-content bt-menu">
    {$content}
</div>
<!-- Menu Block End -->
