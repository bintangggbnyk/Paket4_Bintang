<?php
$server="localhost";
$user="root";
$pass="";
$database="kasirukk";

$koneksi=new mysqli ($server,$user,$pass,$database);

if (!$koneksi){
    die("<script>alert('gagal tersambung dengan database.')</script");
}
// else{
//  die("<script.alert('berhasil login.')</script>");
?>