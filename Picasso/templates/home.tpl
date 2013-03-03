{include file="includes/head.tpl"}
   

            <!-- middle -->
            <div id="middle" class="z-clearfix">

                <!-- content -->
                <div id="content">
                {$maincontent}</div>
                <!-- / content -->

                <!-- sidebar -->
                <div id="sidebar">
                    <div class="sidebarWrap">
                        <div class="sidebarInnerWrap">
                            {blockposition name=left}
                            {blockposition name=right}
                        </div>
                    </div>
                </div>
                <!-- / sidebar -->

            </div>
            <!-- / middle -->

            {include file="includes/footer.tpl"}
        </div>
    </body>
</html>
