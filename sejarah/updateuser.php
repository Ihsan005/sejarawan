<?php

header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();
    
    $id = $_POST['id'];
    $fullname = $_POST['fullname'];
    $username = $_POST['username']; 
   // $password = $_POST['password']; 
    $nohp = $_POST['nohp']; 
    $nim = $_POST['nim'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];


    $sql = "UPDATE user SET fullname = '$fullname', username = '$username',  nohp = '$nohp', nim = '$nim', email = '$email', alamat = '$alamat' WHERE id_user = $id";
    $isSuccess = $koneksi->query($sql);

    if ($isSuccess) {
        $cek = "SELECT * FROM user WHERE id_user = $id";
        $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));
        $response['is_success'] = true;
        $response['value'] = 1;
        $response['message'] = "User Berhasil di Edit";
        $response['fullname'] = $result['fullname'];
        $response['username'] = $result['username'];
        //$response['password'] = $result['password']; 
        $response['nohp'] = $result['nohp']; 
        $response['nim'] = $result['nim']; 
        $response['email'] = $result['email']; 
        $response['alamat'] = $result['alamat']; 
        $response['id_user'] = $result['id_user'];
    } else {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal Edit User";
    }

    echo json_encode($response);
}

?>
