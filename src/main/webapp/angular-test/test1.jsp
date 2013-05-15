<%-- 
    Document   : test1
    Created on : May 13, 2013, 4:29:57 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app>
        <h1>Hello World!</h1>
        <input type="text" ng-model="nama">
        <br>
        <b>Hello :{{nama}}</b>
        <br>
        <table>
            <tr>
                <td>Quantity</td>
                <td>Cost</td>
            </tr>
            <tr>
                <td><input type="number" ng-pattern="/\d+/" step="1" min="0" ng-model="qty" required> </td>
                <td><input type="number" ng-model="cost" required></td>
            </tr>
        </table>
        <hr>
        <b>Total : </b> {{qty * cost | currency}}
        <script type="text/javascript" src="<%= request.getContextPath()%>/resources/js/angularjs/angular.min.js"></script>
        <script>
            function InvoiceCntl($scope) {
                $scope.qty = 1;
                $scope.cost = 19.95;
            }
        </script>
    </body>
</html>
