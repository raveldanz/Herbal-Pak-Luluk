<?php
include 'koneksi.php';
mysqli_query($koneksi,"DELETE FROM pesanan WHERE id_pesanan=".(int)$_GET['id']);
header('Location: data.php');
?>