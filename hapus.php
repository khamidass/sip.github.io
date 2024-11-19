<?php 
include 'koneksi.php';
session_start();

$NIP = $_GET['NIP'];
$sql = "SELECT *  FROM tb_pegawai WHERE NIP = '$NIP'";
$query = mysqli_query($koneksi, $sql);
$hapus_f = mysqli_fetch_array($query);


$sql_h = "DELETE FROM tb_pegawai WHERE NIP = '$NIP' ";
$hapus = mysqli_query($koneksi, $sql_h);

if ($hapus) {
         
         header("location: datakaryawan.php");
} else {
  echo "Gagal Dihapus";
}

 ?>

