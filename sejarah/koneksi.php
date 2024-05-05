<?php

$koneksi = mysqli_connect("localhost", "root", "", "sejarah");

if (!$koneksi) {
	echo "gagal Connect";
}
