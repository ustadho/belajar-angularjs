/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

angular.module('training', [])
.controller('DaftarProdukController', ['$scope', function($scope){
    $scope.daftarProduk=[
        {kode: "0001", nama: "Produk 001", harga:1000},
        {kode: "0002", nama: "Produk 002", harga:2000},
        {kode: "0003", nama: "Produk 003", harga:3000},
        {kode: "0004", nama: "Produk 004", harga:4000},
        {kode: "0005", nama: "Produk 005", harga:5000},
        {kode: "0006", nama: "Produk 006", harga:6000}
    ];
    
    $scope.edit= function(x){
        console.log(x);
    }
}]);
