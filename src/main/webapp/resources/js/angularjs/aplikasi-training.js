angular.module('training', [])
        .config(['$routeProvider', function($routeProvider){
          $routeProvider
          .when('/customer', {templateUrl: 'customer.jsp'})
          .when('/produk', {templateUrl: 'daftar-produk.jsp', controller: 'DaftarProdukController' })
          .otherwise({templateUrl: '404.html'});
        }])
        .controller('DaftarProdukController', ['$scope', 'ProdukService', function($scope, ProdukService) {
        ProdukService.semuaProduk().success(function(data) {
            $scope.daftarProduk = data;
        });

        $scope.edit = function(x) {
            console.log(x);
        };

        $scope.hapus = function(x) {
            var pilihan = -1;
            for (var i = 0; i < $scope.daftarProduk.length; i++) {
                var p = $scope.daftarProduk[i];
                if (p[i] === x.kode) {
                    pilihan = 1;
                    break;
                }
            }
            console.log("Pilihan ada di array index ke" + pilihan);
            $scope.daftarProduk.splice(pilihan, 1);
        };
    }])
        .service('ProdukService', ['$http', function($http) {
        var hasil = {
            semuaProduk: function() {
                return $http.get('../server-data/produk.json');
            }
        };
        return hasil;
    }])
        ;

