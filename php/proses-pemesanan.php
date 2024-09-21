<?php
// File Proses Input data dari form pemesanan.php
include("koneksi.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $namaPemesan = $_POST["namaPemesan"];
    $jenisKelamin = $_POST["jenisKelamin"];
    $nomorIdentitas = $_POST["nomorIdentitas"];
    $tipeKamar = $_POST["tipeKamar"];
    $tanggalPesan = $_POST["tanggalPesan"];
    $durasi = $_POST["durasi"];
    $breakfast = isset($_POST["breakfast"]) ? "Yes" : "No";
    $totalBayar = $_POST['totalBayar'];

    $sql = "INSERT INTO pemesanan (nama_pemesan, jenis_kelamin, nomor_identitas, tipe_kamar, tanggal_pesan, durasi, breakfast, total_bayar)
            VALUES ('$namaPemesan', '$jenisKelamin', '$nomorIdentitas', '$tipeKamar', '$tanggalPesan', '$durasi', '$breakfast', '$totalBayar')";

    if ($conn->query($sql) === TRUE) {
        header('Location: /hotel/pemesanan.html');
    } else {
        header('Location: /hotel/pemesanan.html');
    }
}
?>