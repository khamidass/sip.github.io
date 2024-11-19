<?php
session_start(); 
include 'koneksi.php';
if (isset($_POST['simpan'])) {
	
	$NIP = $_POST['NIP'];
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	$nama = $_POST['nama'];
	$tmp_tgl_lahir = $_POST['tmp_tgl_lahir'];
	$jenkel = $_POST['jenkel'];
	$agama = $_POST['agama'];
	$alamat = $_POST['alamat'];
	$no_tel = $_POST['no_tel'];
	$jabatan = $_POST['jabatan'];

}

if (move_uploaded_file($tmp, $path)) {
	$sql = "SELECT * FROM tb_pegawai WHERE NIP = '".$NIP."'";
	$tambah = mysqli_query($koneksi, $sql);
}

if ($row = mysqli_fetch_row($tambah)) {
echo "<script>alert('Data Dengan NIP = ".$NIP." sudah ada') </script>";
		echo "<script>window.location.href = \"datakaryawan.php\" </script>";

}

$query = "INSERT INTO tb_pegawai set NIP='$NIP', username='$username', password='$password', nama='$nama', tmp_tgl_lahir='$tmp_tgl_lahir', jenkel='$jenkel', agama='$agama', alamat='$alamat', no_tel='$no_tel', jabatan='$jabatan' ";
mysqli_query($koneksi, $query);

if ($query) {
	header("location: datakaryawan.php");
}else{
	echo "gagal";
}

 ?>