<%-- 
    Document   : add-item
    Created on : May 13, 2013, 1:26:50 PM
    Author     : ustadho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app>
    <head>
        <script src="<%= request.getContextPath()%>/resources/js/angularjs/angular.min.js"></script>
        <script type="text/javascript" >
            function FruitController($scope){
                $scope.name="Anonimous"
                $scope.fruits=['apple', 'manggo', 'banana'];
                $scope.addFruit=function(){
                    $scope.fruits.push($scope.newFruit);
                }
            }
            
        </script>
        
    </head>
    <body>
        
        <div ng-controller="FruitController">
            Enter your name: <input type="text" ng-model="name">
            Select a Fruit: 
            <select ng-model="selectedFruit" ng-options="fruit for fruit in fruits"></select>
            <hr/>
            List of Fruits :
            <ul>
                <li ng-repeat="fruit in fruits">{{fruit}}</li>
            </ul>
            <hr/>
            Name : {{name}}<br />
            Selected Fruit : {{selectedFruit}}
            <hr/>
            Add more fruits:
            <input type="text" ng-model="newFruit">
            <button ng-click="addFruit()">Add</button>
        </div>
        
    </body>
</html>
