<%-- 
    Document   : jqgrid1
    Created on : May 10, 2013, 5:15:59 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/themes/jquery-ui-custom.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/themes/ui.jqgrid.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/themes/ui.multiselect.css" />

    </head>
    <body>
        <h1>Hello World!</h1>
        <table id="list27"></table>
        <div id="pager27" ></div>
    </body>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/jquery.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/jquery-ui-custom.min.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/jquery.layout.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jqgrid/grid.locale-en.js" type="text/javascript"></script>
    <script type="text/javascript">
        $.jgrid.no_legacy_api = true;
        $.jgrid.useJSON = true;
    </script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/ui.multiselect.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jqgrid/jquery.jqGrid.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/jquery.tablednd.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/resources/js/jquery/jquery.contextmenu.js" type="text/javascript"></script>

    <script type="text/javascript">
        jQuery("#list27").jqGrid({
            url: 'http://localhost:10000/belajar-angularjs/user-json',
            datatype: "json",
            height: 255,
            width: 600,
            colNames: ['User ID', 'User Name'],
            colModel: [
                {name: 'userId', index: 'userId', width: 65, sorttype: 'int'},
                {name: 'userName', index: 'userName', width: 150}
            ],
            rowNum: 10,
            rowTotal: 2000,
            rowList: [20, 30, 50],
            loadonce: true,
            mtype: "GET",
            rownumbers: true,
            rownumWidth: 40,
            gridview: true,
            pager: '#pager27',
            sortname: 'userId',
            viewrecords: true,
            sortorder: "asc",
            caption: "Loading data from server at once"
        });
        jQuery("#list27").jqGrid('navGrid','#pager27',
                {edit:false,add:false,del:false,search:true},
                { },
        { },
        { }, 
                { 
                sopt:['eq', 'ne', 'lt', 'gt', 'cn', 'bw', 'ew'],
                closeOnEscape: true, 
                multipleSearch: true, 
                closeAfterSearch: true }
);
    </script>
</html>
