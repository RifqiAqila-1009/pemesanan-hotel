<?php
// Koneksi ke Database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pemesanan_hotel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>