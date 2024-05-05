<?php

header("Access-Control-Allow-Origin: *");

include 'koneksi.php';

$sql = "SELECT foto FROM sejarawan";
$result = $koneksi->query($sql);

$response = array();

if ($result->num_rows > 0) {
    $response['isSuccess'] = true;
    $response['message'] = "Berhasil Menampilkan Data Gambar Berita";
    $response['data'] = array();
    
    while ($row = $result->fetch_assoc()) {
        $response['data'][] = $row['foto'];
    }
} else {
    $response['isSuccess'] = false;
    $response['message'] = "Gagal menampilkan Data Gambar Berita";
    $response['data'] = null;
}

echo json_encode($response);

?>
