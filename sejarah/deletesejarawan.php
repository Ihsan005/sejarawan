<?php

header("Access-Control-Allow-Origin: *");

include 'koneksi.php';
$id = $_POST['id'];

// Buat query SQL untuk menghapus data berdasarkan ID
$sql = "DELETE FROM sejarawan WHERE id = $id";

$image = $koneksi->query("SELECT foto FROM sejarawan WHERE id = $id")->fetch_column();

if ($image) {
    $image_path = './gambar_berita/' . $image;

    if (unlink($image_path)) {
        // Jalankan query
        if ($koneksi->query($sql) === TRUE) {
            // Jika penghapusan berhasil
            $response['isSuccess'] = true;
            $response['message'] = "Data sejarawan berhasil dihapus";
        } else {
            // Jika terjadi kesalahan saat menghapus data
            $response['isSuccess'] = false;
            $response['message'] = 'Error: ' . $koneksi->error;
        }
    } else {
        $response['isSuccess'] = false;
        $response['message'] = "Gagal Menghapus Data";
    }
} else {
    $response['isSuccess'] = false;
    $response['message'] = "Gagal menemukan sejarawan";
}
// Mengirimkan response dalam format JSON
echo json_encode($response);
