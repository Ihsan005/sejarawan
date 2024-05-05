<?php

header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();
    
    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $tgl_lahir = $_POST['tgl_lahir'];
    $asal = $_POST['asal'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $deskripsi = $_POST['deskripsi'];


    $sql = "UPDATE sejarawan SET nama = '$nama', tgl_lahir = '$tgl_lahir',  asal = '$asal', jenis_kelamin = '$jenis_kelamin', deskripsi = '$deskripsi' WHERE id = $id";
    $isSuccess = $koneksi->query($sql);

    if ($isSuccess) {
        $cek = "SELECT * FROM sejarawan WHERE id = $id";
        $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));
        $response['is_success'] = true;
        $response['value'] = 1;
        $response['message'] = "sejarawan Berhasil di Edit";
        $response['nama'] = $result['nama'];
        $response['tgl_lahir'] = $result['tgl_lahir']; 
        $response['asal'] = $result['asal']; 
        $response['jenis_kelamin'] = $result['jenis_kelamin']; 
        $response['deskripsi'] = $result['deskripsi']; 
        $response['id'] = $result['id'];
    } else {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal Edit sejarawan";
    }

    echo json_encode($response);
}

?>
