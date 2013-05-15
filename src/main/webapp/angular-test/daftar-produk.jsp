
<h1>Daftar Produk!</h1>
<div ng-hide="daftarProduk.length >0">Daftar produk tidak ada</div>
<table ng-show="daftarProduk.length >0 ">
    <thead>
        <tr>
            <th>Kode</th>
            <th>Nama Barang</th>
            <th>Harga</th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="p in daftarProduk">
            <td>{{p.kode}}</td>
            <td>{{p.nama}}</td>
            <td>{{p.harga}}</td>
            <td>
                <a ng-click="edit(p)">Edit</a> |
                <a ng-click="hapus(p)">Delete</a>
            </td>
        </tr>
    </tbody>
</table>
