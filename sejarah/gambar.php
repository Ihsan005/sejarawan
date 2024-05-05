<?php

header("Access-Control-Allow-Origin: *");

$response = array();
$dir = './gambar_berita';
$accepted_format = array("jpg", "jpeg", "png", "gif");

if (!file_exists($dir)) {
    $response['isSuccess'] = false;
    $response['message'] = "Gagal menemukan direktori gambar berita";
    $response['data'] = null;
} else {
    $filelist = scandir('./gambar_berita');
    $response['isSuccess'] = true;
    $response['message'] = "Berhasil menemukan gambar berita";

    foreach ($filelist as $file) {
        $file_parts = explode('.', $file);
        $file_type = strtolower(end($file_parts));

        if ($file !== '.' && $file !== '..' && in_array($file_type, $accepted_format)) {
            $response['data'][] = $file;
        }
    };
}

echo json_encode($response);
