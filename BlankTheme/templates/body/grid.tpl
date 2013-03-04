{* $Id: grid.htm 470 2010-06-30 17:53:49Z mateo $ *}

<!-- skip link navigation -->
<ul id="skiplinks">
	<li><a class="skip" href="#nav">{gt text='Skip to navigation'} {gt text='(Press Enter)'}.</a></li>
	<li><a class="skip" href="#col1_content">{gt text='Skip to main content'} {gt text='(Press Enter)'}.</a></li>
</ul>

<div class="page_margins {bt_htmloutput section='classespage'}">
	<div class="page {bt_htmloutput section='classesinnerpage'}">

		<!-- begin: #header -->
		<div id="header" class="floatbox">
			<div id="topnav">
				{bt_htmloutput section='topnavlinks'}
				{bt_htmloutput section='fontresize'}
			</div>
			<a href="{$baseurl}">{pnimg src='logo.png' class='logo' __alt='logo'}</a>
			<h1><a href="{$baseurl}" title="{gt text='Go to the homepage'}">{sitename}</a></h1>
			<span class="slogan">{slogan}</span>
		</div>
		<!-- end: #header -->

		<!-- begin: main navigation #nav -->
		<div id="nav">
			{if $usenavtop eq 'b'}
				{blockposition name='navtop'}
			{else}
				{bt_userlinks}
			{/if}
		</div>
		<!-- end: main navigation -->

		<!-- begin: main content area #main -->
		<div id="main" class="floatbox">
			<div class="subcolumns">
				<div class="c62l">
					<div id="col1_content">
						{if $layout|checkzone:nc ne true}
							{blockposition name='center'}
						{/if}

						{$maincontent}
					</div>
				</div>
				<div class="c38r">
					{if $layout|checklayout:123 OR $layout|checklayout:132}
					<div class="subcolumns">
						<div class="c50l">
							<div id="col2_content">
							{if $layout|checklayout:123}
								{blockposition name='left'}
							{else}
								{blockposition name='right'}
							{/if}
							</div>
						</div>
						<div class="c50r">
							<div id="col3_content">
							{if $layout|checklayout:123}
								{blockposition name='right'}
							{else}
								{blockposition name='left'}
							{/if}
							</div>
						</div>
					</div>
					{else}
					<div class="subcr">
					{if $layout|checklayout:12}
						{blockposition name='right'}
					{elseif $layout|checklayout:13}
						{blockposition name='left'}
					{/if}
					</div>
					{/if}
				</div>
			</div>

			{if $layout|checkzone:3b}
			<div id="bt_3b" class="bt_zone subcolumns coolsubcol">
				<div class="c33l">
					<div class="subcl">
						{blockposition name='bottoml'}
					</div>
				</div>
				<div class="c33l">
					<div class="subc">
						{blockposition name='bottomc'}
					</div>
				</div>
				<div class="c33r">
					<div class="subcr">
						{blockposition name='bottomr'}
					</div>
				</div>
			</div>
			{/if}
		</div>
		<!-- end: #main -->

		<!-- begin: #footer -->
		<div id="footer">
			{include file='footer.tpl'}
		</div>
		<!-- end: #footer -->

	</div>
</div>
