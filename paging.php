h<head>
	 
</head>
<?php 
include 'koneksi.php';

$batas = 5;
$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;

$previous = $halaman - 1;
$next = $halaman + 1;

$data = mysqli_query($koneksi, "SELECT * FROM tb_pegawai");
$jumlah_data = mysqli_num_rows($data);
$total_halaman = ceil($jumlah_data / $batas);

$data_pegawai = mysqli_query($koneksi, "SELECT * FROM tb_pegawai LIMIT $halaman_awal, $batas");
$nomor = $halaman_awal+1;

if (isset($_GET['cari'])) {
	$cari = $_GET['cari'];

	$data = mysqli_query($koneksi, "SELECT * FROM tb_pegawai WHERE nama LIKE '%".$cari."%'");
}else{
	$data = mysqli_query($koneksi, "SELECT * FROM tb_pegawai");
}





while ($row=mysqli_fetch_array($data_pegawai)) {
	



 ?>

  <tr>
                                         
                                                <td><?php echo $row['NIP']; ?></td>
                                                <td><?php echo $row['nama']; ?></td>
                                                <td><?php echo $row['tmp_tgl_lahir']; ?></td>
                                                <td><?php echo $row['jenkel']; ?></td>
                                                <td><?php echo $row['agama']; ?></td>
                                                <td><?php echo $row['alamat']; ?></td>
                                                <td><?php echo $row['no_tel']; ?></td>
                                                <td><?php echo $row['jabatan']; ?></td>



                                                <td><a href="karyawan_edit.php?NIP=<?php echo $row['NIP']; ?>"><button class="btn btn-primary">Ubah</button></a> <a href="hapus.php?NIP=<?php echo $row['NIP']; ?>"><button class="btn btn-danger" onclick="return confirm('yakin ingin dihapus?');">Hapus</button></a></td>


                                                
                                            </tr>
                                        <?php } ?>

