<?php include 'koneksi.php'; ?>
<!DOCTYPE html><html><head><meta charset='utf-8'><title>Data Pesanan</title>
<link rel="stylesheet" href="css/bootstrap.css"></head><body>
<div class="container mt-4">
<h2>Data Pesanan</h2>
<a href="pesan.php" class="btn btn-success mb-3">Tambah Pesanan</a>
<table class="table table-bordered">
<tr><th>ID</th><th>Nama</th><th>HP</th><th>Produk</th><th>Jumlah</th><th>Alamat</th><th>Tanggal</th><th>Aksi</th></tr>
<?php $q=mysqli_query($koneksi,'SELECT * FROM pesanan ORDER BY id_pesanan DESC'); while($r=mysqli_fetch_assoc($q)){ ?>
<tr>
<td><?= $r['id_pesanan'] ?></td><td><?= $r['nama'] ?></td><td><?= $r['hp'] ?></td>
<td><?= $r['produk'] ?></td><td><?= $r['jumlah'] ?></td><td><?= $r['alamat'] ?></td>
<td><?= $r['tanggal'] ?></td>
<td><a class='btn btn-danger btn-sm' href='hapus.php?id=<?= $r['id_pesanan'] ?>'>Hapus</a></td>
</tr>
<?php } ?>
</table></div></body></html>