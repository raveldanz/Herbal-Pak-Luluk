<?php include 'koneksi.php'; ?>
<!DOCTYPE html><html><head><meta charset='utf-8'><title>Pesan Produk</title>
<link rel="stylesheet" href="css/bootstrap.css"></head><body>
<div class="container mt-4">
<h2>Form Pemesanan</h2>
<form action="simpan_pesanan.php" method="POST">
<input class="form-control mb-2" name="nama" placeholder="Nama" required>
<input class="form-control mb-2" name="hp" placeholder="No HP" required>
<input class="form-control mb-2" name="alamat" placeholder="Alamat" required>
<input class="form-control mb-2" name="produk" placeholder="Produk" required>
<input class="form-control mb-2" type="number" name="jumlah" placeholder="Jumlah" required>
<input class="form-control mb-2" type="date" name="tanggal" required>
<button class="btn btn-success">Simpan</button>
<a href="data.php" class="btn btn-primary">Lihat Data</a>
</form></div></body></html>