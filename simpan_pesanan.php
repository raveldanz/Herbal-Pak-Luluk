<?php
include 'koneksi.php';
mysqli_query($koneksi,"INSERT INTO pesanan(nama,hp,alamat,produk,jumlah,tanggal)
VALUES ('$_POST[nama]','$_POST[hp]','$_POST[alamat]','$_POST[produk]','$_POST[jumlah]','$_POST[tanggal]')");
header('Location: data.php');
?>