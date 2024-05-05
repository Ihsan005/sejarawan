<?php

header("Access-Control-Allow-Origin: *");

include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (
        isset($_POST['nama'])
        && isset($_POST['tgl_lahir'])
        && isset($_POST['asal'])
        && isset($_FILES['foto'])
        && isset($_POST['tgl_lahir'])
        && isset($_POST['jenis_kelamin'])
        && isset($_POST['deskripsi'])
    ) {
        $nama = $_POST['nama'];
        $tgl_lahir = $_POST['tgl_lahir'];
        $asal = $_POST['asal'];
        $foto = $_FILES['foto'];
        $jenis_kelamin = $_POST['jenis_kelamin'];
        $deskripsi = $_POST['deskripsi'];

        if (move_uploaded_file($foto['tmp_name'], "./gambar_berita/" . $foto['name'])) {
            $query = $koneksi->prepare("INSERT INTO sejarawan (nama, tgl_lahir, asal, foto, jenis_kelamin, deskripsi) VALUES (?, ?, ?, ?, ?, ?)");
            $query->bind_param("ssssss", $nama, $tgl_lahir, $asal, $foto['name'], $jenis_kelamin, $deskripsi);
            if ($query->execute()) {
                $response['isSuccess'] = true;
                $response['message'] = "Berhasil menambahkan data sejarawan";
            } else {
                $response['isSuccess'] = false;
                $response['message'] = "Gagal menambahkan data sejarawan: " . $koneksi->error;
            }
        } else {
            $response['isSuccess'] = false;
            $response['message'] = "Gagal upload gambar";
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
