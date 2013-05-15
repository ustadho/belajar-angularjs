<%-- 
    Document   : autocomplete
    Created on : May 14, 2013, 1:03:06 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app='MyModule'>
        <div >
            <div ng-controller='DefaultCtrl'>
                <input auto-complete ui-items="names" ng-model="selected" >
                selected = {{selected}}
            </div>
        </div>
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/jquery/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/angularjs/angular.min.js"></script>
        <script type="text/javascript" src="autocomplete.js"></script>
    </body>
</html>
