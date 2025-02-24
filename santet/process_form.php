<?php
$servername = "localhost"; // Ganti dengan server database Anda
$username = "root"; // Ganti dengan username database Anda
$password = ""; // Ganti dengan password database Anda
$dbname = "santet"; // Ganti dengan nama database Anda

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Mengecek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengambil data dari form
    $nama_korban = $_POST['nama_korban'];
    $tanggal_lahir_korban = $_POST['tanggal_lahir_korban'];
    $muatan_santet = $_POST['muatan_santet'];

    // Menyiapkan query dengan prepared statement
    $stmt = $conn->prepare("INSERT INTO santet (nama_korban, tanggal_lahir_korban, muatan_santet) VALUES (?, ?, ?)");
    
    // Mengikat parameter ke query
    $stmt->bind_param("sss", $nama_korban, $tanggal_lahir_korban, $muatan_santet);

    // Menjalankan query
    if ($stmt->execute()) {
        echo "Data berhasil disimpan!";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Menutup statement dan koneksi
    $stmt->close();
    $conn->close();
}
?>
