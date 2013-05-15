<%-- 
    Document   : hello-world
    Created on : May 15, 2013, 10:45:40 AM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/angularjs/angular.min.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" ng-model="name">
        <h1>Hello {{name}}</h1>
    </body>
</html>
