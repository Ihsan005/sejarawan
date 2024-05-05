<?php

header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();

    $id = $_POST['id'];
    $fullname = $_POST['fullname'];
    $username = $_POST['username'];
    $nohp = $_POST['nohp'];
    $nim = $_POST['nim'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];

    $sql = "UPDATE user SET fullname = '$fullname', username = '$username',  nohp = '$nohp', nim = '$nim', email = '$email', alamat = '$alamat', updated = NOW() WHERE id_user = $id";

    if ($koneksi->query($sql)) {
        $response['isSuccess'] = true;
        $response['message'] = "User Berhasil di Edit";
    } else {
        $response['isSuccess'] = false;
        $response['message'] = "Gagal Edit User";
    }

    echo json_encode($response);
}
