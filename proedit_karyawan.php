<?php
session_start();
error_reporting(0);
include 'koneksi.php';

//proses input
if (isset($_POST['ubahdata'])) {
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
    if(move_uploaded_file($tmp, $path)){ //awal move upload file
      $sql    = "SELECT * FROM tb_pegawai WHERE NIP = '".$NIP."' ";
      $query  = mysqli_query($koneksi, $sql);
      $hapus_f = mysqli_fetch_array($query);

      // Proses ubah data ke Database
      $sql_f = "UPDATE tb_pegawai set username='$username', password='$password', nama='$nama', tmp_tgl_lahir='$tmp_tgl_lahir', jenkel='$jenkel', agama='$agama', alamat='$alamat', no_tel='$no_tel', jabatan='$jabatan' WHERE NIP='$NIP'";
      $ubah  = mysqli_query($koneksi, $sql_f);
      if($ubah){
        echo "<script>alert('Ubah Data Dengan NIP = ".$NIP." Berhasil') </script>";
        echo "<script>window.location.href = \"datakaryawan.php\" </script>";
      } else {
        $sql    = "SELECT * FROM tb_pegawai WHERE NIP = '".$NIP."' ";
        $query  = mysqli_query($koneksi, $sql);
        while ($row = mysqli_fetch_array($query)) {
          echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
          echo "<br><a href=\"edit_karyawan.php?NIP=".$row['NIP']."\"> Kembali Ke From ! </a>";
        }
      }
    } //akhir move upload file
  
 else { //hanya untuk mengubah data
   $sql_d   = "UPDATE tb_pegawai set username='$username', password='$password', nama='$nama', tmp_tgl_lahir='$tmp_tgl_lahir', jenkel='$jenkel', agama='$agama', alamat='$alamat', no_tel='$no_tel', jabatan='$jabatan' WHERE NIP='$NIP'";
   $data    = mysqli_query($koneksi, $sql_d);
   if ($data) {
     echo "<script>alert('Ubah Data Dengan NIP = ".$NIP." Berhasil') </script>";
     echo "<script>window.location.href = \"datakaryawan.php\" </script>";
   } else {
     $sql   = "SELECT * FROM tb_pegawai WHERE NIP = '".$NIP."' ";
     $query = mysqli_query($koneksi, $sql);
     while ($row = mysqli_fetch_array($query)) {
       echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
       echo "<br><a href=\"edit_karyawan.php?NIP=".$row['NIP']."\"> Kembali Ke From ! </a>";
     }
   }
 } //akhir untuk mengubah data
}

?>
