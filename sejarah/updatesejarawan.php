<?php

header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();

    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $tgl_lahir = $_POST['tgl_lahir'];
    $asal = $_POST['asal'];
    $foto = $_FILES['foto'] ?? null;
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $deskripsi = $_POST['deskripsi'];
    $date = date("YmdHis");
    $filename = null;

    if ($foto !== null) {
        if (move_uploaded_file($foto['tmp_name'], "./gambar_berita/$date-$foto[name]")) {
            $filename = $date . '-' . $foto['name'];
        } else {
            $filename = null;
            $response['isSuccess'] = false;
            $response['message'] = "Gagal upload gambar";
        }
    } else {
        $image = $koneksi->query("SELECT foto FROM sejarawan WHERE id = $id")->fetch_column();
        if ($image && $foto === null) $filename = $image;
    }
    if ($filename !== null) {
        $query = $koneksi->prepare("UPDATE sejarawan SET nama = ?, tgl_lahir = ?, asal = ?,  foto = ?, jenis_kelamin = ?, deskripsi = ? WHERE id = ?");
        $query->bind_param("ssssssi", $nama, $tgl_lahir, $asal,  $filename, $jenis_kelamin, $deskripsi, $id);
        if ($query->execute()) {
            $response['isSuccess'] = true;
            $response['message'] = "Berhasil mengedit data sejarawan";
            $response['data'][] = array(
                'id' => $id,
                'nama' => $nama,
                'tgl_lahir' => $tgl_lahir,
                'asal' => $asal,
                'foto' => $filename,
                'jenis_kelamin' => $jenis_kelamin,
                'deskripsi' => $deskripsi
            );
        } else {
            $response['isSuccess'] = false;
            $response['message'] = "Gagal mengedit data sejarawan: " . $koneksi->error;
        }
    }

    echo json_encode($response);
}
