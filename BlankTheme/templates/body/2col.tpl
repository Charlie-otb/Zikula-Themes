{* $Id: 2col.htm 470 2010-06-30 17:53:49Z mateo $ *}

<!-- skip link navigation -->
<ul id="skiplinks">
	<li><a class="skip" href="#nav">{gt text='Skip to navigation'} {gt text='(Press Enter)'}.</a></li>
	<li><a class="skip" href="#col1">{gt text='Skip to main content'} {gt text='(Press Enter)'}.</a></li>
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
			{if $layout|checklayout:2}
			<!-- begin: #col2 column -->
			<div id="col2">
				<div id="col2_content" class="clearfix">
					{blockposition name='left'}
				</div>
			</div>
			<!-- end: #col2 -->
			{/if}

			{if $layout|checklayout:3}
			<!-- begin: #col3 column -->
			<div id="col3">
				<div id="col3_content" class="clearfix">
					{blockposition name='right'}
				</div>
			</div>
			<!-- end: #col3 -->
			{/if}

			<!-- begin: #col1 - main column -->
			<div id="col1">
				<div id="col1_content" class="floatbox">
					{if $layout|checkzone:nc ne true}
						{blockposition name='center'}
					{/if}

					{$maincontent}

					{if $layout|checkzone:2cb}
					<div id="bt_2cb" class="bt_zone subcolumns">
						<div class="c50l">
							<div class="subcl">
								{blockposition name='centerbl'}
							</div>
						</div>
						<div class="c50r">
							<div class="subcr">
								{blockposition name='centerbr'}
							</div>
						</div>
					</div>
					{/if}
				</div>
				<!-- IE column Clearing -->
				<div id="ie_clearing">&nbsp;</div>
			</div>
			<!-- end: #col1 -->
		</div>
		<!-- end: #main -->

		<!-- begin: #footer -->
		<div id="footer">
		{include file='footer.tpl'}
		</div>
		<!-- end: #footer -->

	</div>
</div>
