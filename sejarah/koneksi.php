<?php

$koneksi = mysqli_connect("localhost", "root", "", "sejarah");

if($koneksi){

	echo "Database berhasil Connect";
	
} else {
	echo "gagal Connect";
}

?>