<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $cek = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
    $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));

    if (isset($result)) {
        $response['isSuccess'] = true;
        $response['message'] = "berhasil login";
        $response['data'] = array($result);
        echo json_encode($response);
    } else {
        $response['isSuccess'] = false;
        $response['message'] = "Gagal login";
        echo json_encode($response);
    }
}
