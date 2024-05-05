<?php

header("Access-Control-Allow-Origin: *");

include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Pastikan bahwa semua parameter yang diperlukan tersedia
    if (isset($_POST['nama']) && isset($_POST['asal'])) {
        $nama = $_POST['nama'];
        $tgl_lahir = $_POST['tgl_lahir'];
        $asal = $_POST['asal'];
        $jenis_kelamin = $_POST['jenis_kelamin'];
        $deskripsi = $_POST['deskripsi'];

        $sql = "INSERT INTO sejarawan (nama, tgl_lahir, asal, jenis_kelamin, deskripsi) VALUES ('$nama','$tgl_lahir', '$asal', '$jenis_kelamin','$deskripsi')";
        if ($koneksi->query($sql) === TRUE) {
            $response['isSuccess'] = true;
            $response['message'] = "Berhasil menambahkan data sejarawan";
        } else {
            $response['isSuccess'] = false;
            $response['message'] = "Gagal menambahkan data sejarawan: " . $koneksi->error;
        }
    } else {
        $response['isSuccess'] = false;
        $response['message'] = "Parameter tidak lengkap";
    }
} else {
    $response['isSuccess'] = false;
    $response['message'] = "Metode yang diperbolehkan hanya POST";
}

echo json_encode($response);
?>
