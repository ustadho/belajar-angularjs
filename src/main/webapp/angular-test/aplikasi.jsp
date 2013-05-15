<%-- 
    Document   : aplikasi
    Created on : May 15, 2013, 2:17:55 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app="training">
        <h1>Hello Belajar!</h1>
        <ul>
            <li><a href="#produk">Produk</a> </li>
            <li><a href="#customer">Customer</a> </li>
        </ul>
        <hr>
        <div ng-view>
            Nanti screen disini
        </div>
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/angularjs/angular.min.js" ></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/angularjs/aplikasi-training.js" ></script>
    </body>
</html>
