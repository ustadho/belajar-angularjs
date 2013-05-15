<%-- 
    Document   : test2
    Created on : May 13, 2013, 4:53:19 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app="training" ng-controller="DaftarProdukController">
        <h1>Daftar Produk!</h1>
        <table>
            <thead>
                <th>Kode</th>
                <th>Nama</th>
                <th>Harga</th>
                <th>&nbsp;</th>
            </thead>
            <tbody>
                <tr ng-repeat="p in daftarProduk">
                    <td>{{p.kode}}</td>
                    <td>{{p.nama}}</td>
                    <td>{{p.harga}}</td>
                    <td>
                        <a ng-click="edit(p)">Edit</a>|
                        <a>Hapus</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/angularjs/angular.min.js"></script>
        <script type="text/javascript" src="aplikasi.js"></script>
    </body>
</html>
