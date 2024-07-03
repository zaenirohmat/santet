<?php
$servername = "localhost"; // Change this to your database server
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$dbname = "santet"; // Change this to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_korban = $_POST['nama_korban'];
    $tanggal_lahir_korban = $_POST['tanggal_lahir_korban'];
    $muatan_santet = $_POST['muatan_santet'];

    $sql = "INSERT INTO santet (nama_korban, tanggal_lahir_korban, muatan_santet) VALUES ('$nama_korban', '$tanggal_lahir_korban', '$muatan_santet')";

    if ($conn->query($sql) === TRUE) {
        echo "Data berhasil disimpan!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
