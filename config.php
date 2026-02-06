<?php
$host = 'sql200.infinityfree.com';  // alamat host MySQL
$db = 'if0_38060311_kasir';        // nama database yang telah dibuat
$username = 'if0_38060311';   // username MySQL (default di XAMPP adalah root)
$password = 'v9j6yrsA79qu';       // password MySQL (default di XAMPP kosong)

// Membuat koneksi ke database
$conn = new mysqli($host, $username, $password, $db);

// Cek apakah koneksi berhasil
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);  // Akan menampilkan pesan kesalahan jika koneksi gagal
} 
?>
