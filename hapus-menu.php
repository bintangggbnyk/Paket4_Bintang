<?php
include_once("koneksi/koneksi.php");
$id =$_GET['id'];
$sql =$koneksi->query("DELETE FROM detailpenjualan WHERE penjualanID=$id");
echo "<script>
    alert('data berhasil diapus')
    window.location.href = 'daftar-transaksi.php';
    </script>";
