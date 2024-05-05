-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2024 pada 14.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sejarah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `konten_berita` text NOT NULL,
  `gambar_berita` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `konten_berita`, `gambar_berita`, `created`, `updated`) VALUES
(1, 'berbagai Bentuk dan Makna Rumah Tradisional Minangkabau', 'Minangkabau merupakan salah satu puak bangsa Melayu di Indonesia yang mendukung adat resam nenek moyang mereka. Keunikan budaya Minangkabau dapat dilihat dari pelbagai karya sastera yang ia menghasilkan. Di samping itu, bentuk bangunan rumah tradisional Minangkabau juga mempunyai ciri yang unik. Nama rumah tradisional Minangkabau dikenali sebagai rumah gadang.\r\n\r\nRumah gadang mempunyai bentuk seni bina yang unik dengan puncak bumbung yang tajam yang menyerupai horn kerbau. Bumbung rumah diperbuat daripada bahan serat kelapa sawit yang boleh bertahan selama berpuluh-puluh tahun. Rumah gadang diperbuat daripada bentuk segi empat tepat dan dibahagikan kepada dua bahagian, muka dan belakang. Walaupun ia dibina dari tiang panjang sebagai penimbal dan dibuat besar ke atas, tetapi rumah tradisional Minangkabau tidak mudah runtuh oleh goncangan gempa.\r\nNama dan makna rumah tradisional Minangkabau\r\n\r\nRumah gadang terdapat di kawasan Barat Sumatera yang menempatkan masyarakat etnik Minangkabau. Selain dikenali sebagai Gadang, nama rumah Minangkabau tradisional juga sering digelar Bagonjong atau Baanjuang. Rumah gadang hanya boleh ditubuhkan di kawasan yang mempunyai status Nagari.\r\n\r\nRumah gadang boleh ditafsirkan sebagai sebuah rumah besar yang digunakan sebagai tempat tinggal, selain rumah ini digunakan sebagai tempat untuk mengadakan majlis tradisional seperti majlis perkahwinan tradisional Minangkabau dan pertimbangan keluarga.\r\n\r\nBahagian yang sedia ada daripada rumah Gadang mempunyai maksud dan fungsi yang menjadi simbol kehidupan rakyat Minangkabau yang mendukung adat dan agama. Bumbung yang runcing berfungsi untuk membenarkan air hujan jatuh pada sawit berlapis untuk meluncur dengan cepat ke bawah. Bentuk berlanjutan ke atas dipanggil Silek istilah yang berfungsi untuk melepaskan pelakon Tampias. Rumah yang cukup tinggi mampu untuk memberi sejuk. Rumah gadang biasanya didirikan di atas tanah memiliki keluarga yang merupakan warisan keturunan ibu.\r\nStruktur rumah tradisional Minangkabau\r\n\r\nRumah gadang mempunyai panjang kira-kira 12.5 meter dengan 5 bilik. Bagi 17 bilik, rumah Minangkabau yang tradisional ini boleh mencapai 50 meter. Lebar rumah gadang antara 10-14 meter dengan ketinggian 5-7 meter di atas paras tanah. Orang Minangkabau  memanggil saiz rumah gadang dengan rumah gadang sembilan ruang.\r\n\r\nDi bahagian rumah gadang digunakan sebagai tempat untuk tenunan wanita rakyat Minangkabau, atau membuat tembikar. Bahagian Kolong juga digunakan sebagai tempat untuk memupuk haiwan ladang atau menyimpan peralatan pertanian. Kerja rakyat Minangkabau adalah sebagai seorang petani.\r\n\r\nDi perkarangan, terdapat sepasang bangunan yang berfungsi sebagai bangsal, dipanggil Rangkiang. Rangkiang ini adalah beberapa jenis dan setiap satunya mempunyai fungsinya sendiri. Si Tinjau Lauik Rangkiang terletak di tengah-tengah yang seluruh Rangkiang, berkhidmat sebagai tempat untuk menjaga beras untuk dijual. Sedagkan Rangkiang si Bayau-Bayau terletak di sebelah kanan sebagai tempat untuk menyelamatkan beras yang akan digunakan untuk keperluan makan harian.\r\n\r\nSi Tanggung Lape, yang merupakan Rangkiang yang berfungsi sebagai tempat untuk menyimpan beras yang akan digunakan sebagai rizab makanan semasa kebuluran. Terdapat juga Rangkiang Kaciak atau jahitan yang kecil dan kecil. Fungsinya merupakan tempat untuk menyimpan benih padi.\r\nLain-lain bentuk rumah tradisional Minangkabau\r\n\r\nDi Minangkabau terdapat 3 varian rumah gadang.\r\n1. Rumah Gadang Gajah Maharam\r\n\r\nGajah Maharam bermaksud Gajah mendekam. Ini jenis rumah gadang yang mempunyai perbandingan antara panjang, lebar, dan ketinggian yang kelihatan lemak. Itulah sebabnya rumah ini mempunyai nama Gajah maharam. Rumah gadang mempunyai panjang 16.5 meter dan lebar 7.6 meter dengan bilangan gonjong di atas bahagian 5 bumbung. Rumah gadang Gajah Maharam dibina menghadap ke utara.\r\n2. Rumah Gadang Bapaserek\r\n\r\nBapaserek boleh ditafsirkan sebagai bahagian yang mengheret, yang di belakang rumah yang termasuk beberapa bilik. Jika ia diperhatikan dari belakang, ia akan kelihatan lebih daripada bahagian dinding yang hanya di sebelah kiri.\r\n3. Rumah Gadang Rajo Babanding\r\n\r\nCiri jenis ini rumah gadang mempunyai bentuk bumbung yang lebih tinggi daripada rumah gadang secara umum. Satu lagi ciri ialah tangga rumah antara dapur dan rumah utama.\r\nFungsi rumah tradisional Minangkabau\r\n\r\nRumah gadang mempunyai fungsi sebagai tempat untuk hidup bersama-sama, di mana jumlah bilik bergantung kepada bilangan wanita yang tinggal di rumah. Semua bahagian di dalam rumah gadang adalah bilik terbuka kecuali dalam bilik tidur yang di bahagian mereka mesti mematuhi peraturan dan peraturan adat.\r\n\r\nTunggak rumah Minangkabau dari barisan ke belakang menandakan Lanjar dan kewujudan tiang dari kiri ke kanan menandakan ruang. Jumlah ruang di rumah gadang biasanya terdiri daripada 3-11 Lanjar, manakala bilangan bilik adalah ganjil.\r\nRumah tradisional Minangkabau ini didiami oleh keluarga besar yang terdiri daripada bapa, ibu dan anak yang belum berkahwin dan saudara-mara ibu. Jika seorang gadis yang berkahwin, maka dia akan tinggal di rumah gadang ibunya, manakala suami yang hidup dipanggil “Urang Sumando”. Bagi lelaki dewasa yang belum berkahwin, beliau tinggal di sebuah surau yang dibina tidak jauh dari bangunan rumah. Selain berfungsi sebagai tempat ibadat, surau juga merupakan tempat untuk mempelajari agama dan adat untuk lelaki yang belum berkahwin.\r\n\r\nItu adalah penjelasan mengenai struktur, fungsi dan makna rumah adat Minangkabau yang kita boleh menyampaikan. Rumah yang unik ini boleh dilihat secara langsung di beberapa kawasan Sumatera Barat. Baik dengan transportasi pribadi maupun dengan jasa persewaan seperti halnya jasa Sewa Mobil Padang. Anda boleh melawat melalui perkhidmatan pelancongan yang menyediakan pakej percutian Padang dengan perkhidmatan profesional.', 'RumahGadang.jpg', '2024-05-01 17:13:12', NULL),
(2, 'Sejarah Rendang: Makanan Khas Minang yang Menjadi Primadona Kuliner Nusantara', 'kaya akan cita rasa dan tradisi, telah menjelma menjadi primadona di dunia kuliner Nusantara.\r\n\r\nNamun, kepopulerannya tidak terjadi begitu saja. Sejarah panjang dan menarik mengiringi perjalanan kuliner yang satu ini.\r\n\r\nAsal Usul\r\nRendang memiliki akar yang dalam dalam budaya Minangkabau, sebuah suku bangsa di Sumatera Barat, Indonesia. Konon, rendang telah ada sejak abad ke-16 ketika pedagang dari India dan Timur Tengah memperkenalkan rempah-rempah ke wilayah itu.Para ibu rumah tangga Minangkabau yang piawai dengan bumbu-bumbu tradisional pun mulai menciptakan rendang sebagai salah satu hidangan khas.Dulu, rendang adalah bagian dari hidangan sehari-hari di rumah-rumah Minang. Namun, dengan semakin meningkatnya perjalanan lintas budaya dan masuknya ke dalam dunia kuliner internasional, rendang merambah ke resto-resto di kota-kota besar. Kelezatannya yang unik dan rasa rempah yang kaya membuatnya sangat diminati oleh orang-orang dari berbagai belahan dunia.\r\nPengakuan Dunia\r\n\r\nPada tahun 2011, rendang diakui sebagai hidangan terenak di dunia oleh CNN Travel. Pengakuan ini menjadi momen penting bagi masakan Indonesia dan budaya Minangkabau secara umum.Sejak itu, rendang semakin mendapatkan perhatian internasional dan menjadi salah satu simbol kuliner Indonesia yang mendunia.\r\n\r\nProses Memasak yang Berbeda\r\n\r\nProses memasak rendang sangatlah unik. Daging sapi yang dipotong kecil-kecil direndam dalam santan kental yang telah dipadukan dengan rempah-rempah khas, seperti serai, daun jeruk, jahe, bawang merah, bawang putih, dan cabai merah. Santan tersebut kemudian dimasak dengan api kecil selama berjam-jam hingga santan menyusut dan bumbu meresap sempurna ke dalam daging, menciptakan cita rasa yang kaya dan gurih.', 'rendang.jpg', '2024-05-02 14:47:03', NULL),
(3, 'Menelusuri Sejarah Islam di Sumatera Barat Melalui 10 Masjid Tertua Di Minang Kabau', ' Sumatera Barat, provinsi yang kaya akan sejarah panjang dalam perjalanan masuknya agama Islam di Indonesia.\r\n\r\nMenyimpan banyak masjid - masjid bersejarah yang menjadi tempat ibadah dan penyebaran agama Islam.Di tengah Minangkabau yang kental dengan budaya dan tradisi, masjid-masjid ini juga menjadi pusat dakwah bagi umat Islam.\r\n\r\nSalah satu sorotan dalam artikel ini adalah mengenai masjid-masjid tertua yang berdiri kokoh hingga saat ini di Sumatera Barat.\r\nBerikut adalah beberapa Masjid Tertua di sumatera barat yang di lansir TIMENEWS.co.id dari kanal YouTube Creative Hamdi pada 23 Maret 2024:\r\n\r\n1. Masjid Raya Surau Roro\r\n\r\n- Terletak di Nagari Rao-rao, Kabupaten Tanah Datar, masjid ini mulai dibangun sejak tahun 1908. Meskipun pernah mengalami kerusakan akibat gempa, masjid ini masih tegak kokoh dengan arsitektur khas Minangkabau.\r\n\r\n2. Masjid Ummul Qura\r\n\r\n- Berusia lebih dari 100 tahun, masjid ini terletak di Kabupaten Agam.\r\n\r\nDibangun sebelum masa kemerdekaan, masjid ini telah mengalami berbagai renovasi namun tetap mempertahankan keaslian bangunannya.3. Masjid Raya Pariaman\r\n\r\n- Didirikan pada tahun 1882, masjid ini menjadi bagian dari cagar budaya di Sumatera Barat.\r\n\r\nLokasinya di Kota Pariaman, dan memiliki arsitektur yang memukau dengan pengaruh Timur Tengah dan Eropa.\r\n\r\n4. Masjid Raya Talua Masih Reta Lo\r\n\r\n- Merupakan salah satu masjid tertua di Indonesia, dibangun pada tahun 1860.Terletak dekat perbatasan Kota Bukittinggi, masjid ini menjadi salah satu ikon arsitektur Minangkabau yang kental.\r\n\r\n5. Masjid Bengkulu Bingkudu\r\n\r\n- Didirikan pada tahun 1823, masjid ini menjadi saksi perjalanan Islam di Sumatera Barat.\r\n\r\nMeskipun awalnya terbuat dari kayu, saat ini masjid ini telah mengalami pemugaran namun tetap mempertahankan bentuk dan arsitektur aslinya.6. Masjid Raya Ganting\r\n\r\n- Sebagai peninggalan abad ke-17, masjid ini menggabungkan gaya arsitektur Timur Tengah dan Eropa.\r\n\r\nDibangun pada tahun 1790, masjid ini telah menjadi bagian tak terpisahkan dari sejarah Kota Padang7. Masjid Lini\r\n\r\n- Didirikan pada awal abad ke-17 oleh seorang ulama penyebar Islam di Nagari Tara, masjid ini merupakan bagian penting dari sejarah dakwah Islam di daerah tersebut.\r\n\r\nBangunan surau yang ada saat ini telah mengalami pemugaran dengan mempertahankan bentuk aslinya.\r\n\r\n8. Masjid Raya Asasi\r\n\r\n- Merupakan masjid tertua di Padangpanjang, Sumatera Barat.\r\n\r\nDibangun sekitar tahun 1770, masjid ini telah menjadi pusat ibadah dan pendidikan agama bagi masyarakat setempat.\r\n\r\n9. Masjid Raya Lima Kaum- Terletak di Kabupaten Tanah Datar, masjid ini memiliki sejarah yang panjang sejak abad ke-17.Meskipun pernah mengalami berbagai perubahan, namun masjid ini tetap menjadi simbol keberadaan Islam di daerah tersebut.\r\n\r\n10. Masjid Tuo Kayu Jao\r\n\r\n- Berdiri sejak abad ke-16, masjid ini merupakan bagian dari sejarah syiar Islam di Solok, Sumatera Barat.\r\n\r\nMemadukan arsitektur Islam dan Minangkabau, masjid ini telah menjadi pusat dakwah dan ibadah selama ratusan tahun.', 'masjid.jpg', '2024-05-02 14:53:36', NULL),
(4, 'ASAL USUL NAMA MINANG KABAU BERASAL DARI ADU KERBAU', 'Asal usul nama Minangkabau memiliki beberapa versi legenda yang populer di masyarakat. Berikut adalah dua versi yang paling dikenal:\r\n\r\nVersi Adu Kerbau:\r\n\r\nVersi ini menceritakan tentang pertempuran antara penduduk Minangkabau dengan pasukan Majapahit. Penduduk Minangkabau terkenal dengan kekuatan kerbau mereka. Dalam pertempuran tersebut, kerbau Minangkabau berhasil mengalahkan kerbau Majapahit. Kemenangan ini kemudian diabadikan dengan nama \"Minang Kabau\", yang berarti \"Minang yang Mengalahkan Kerbau\".\r\n\r\nVersi Minanga Tamwan:\r\n\r\nVersi ini menafsirkan nama Minangkabau sebagai gabungan dari kata \"Minanga\" dan \"Tamwan\". \"Minanga\" merujuk pada daerah di sekitar pertemuan Sungai Kampar Kiri dan Kampar Kanan. Sedangkan \"Tamwan\" berarti \"bertemu\". Oleh karena itu, \"Minangkabau\" diartikan sebagai \"daerah pertemuan Sungai Kampar Kiri dan Kampar Kanan\".\r\n\r\nKedua versi ini memiliki nilai historis dan budaya yang penting bagi masyarakat Minangkabau. Versi adu kerbau menunjukkan keberanian dan kekuatan masyarakat Minangkabau, sedangkan versi Minanga Tamwan menunjukkan asal-usul geografis mereka.\r\n\r\nPenting untuk dicatat bahwa tidak ada satu versi yang secara pasti menjelaskan asal usul nama Minangkabau. Setiap versi memiliki pendukungnya sendiri dan telah diwariskan turun-temurun.\r\n\r\nSelain kedua versi di atas, terdapat beberapa versi lain yang kurang populer, seperti versi \"Minang Kaba\", \"Minang Kabau Sago\", dan \"Minang Kabau Patah\".\r\n\r\nTerlepas dari versi mana yang benar, nama Minangkabau telah menjadi identitas yang kuat bagi masyarakat Minangkabau dan menjadi bagian integral dari budaya mereka.', 'adukerbau.jpg', '2024-05-02 15:02:41', NULL),
(5, 'Asal Usul Kerajaan Pagaruyuang ', 'Kerajaan Pagaruyung merupakan kerajaan yang pernah berdiri di bagian tengah pulau Sumatra, yang wilayahnya sekarang menjadi bagian daratan Provinsi Sumatera Barat, sebagian Provinsi Riau, dan bagian pesisir barat Provinsi Sumatera Utara.\r\n\r\nSejarah Singkat:\r\n\r\nKerajaan Pagaruyung diperkirakan berdiri pada abad ke-14.\r\nPendirinya diyakini adalah Adityawarman, raja Melayu yang berkuasa di Dharmasraya.\r\nKerajaan ini mencapai puncak kejayaannya pada abad ke-16 dan ke-17.\r\nPada masa itu, Pagaruyung menjadi pusat perdagangan dan penyebaran agama Islam di Minangkabau.\r\nKerajaan ini menganut sistem matrilineal, di mana garis keturunan dan harta warisan diwariskan melalui garis ibu.\r\nKerajaan Pagaruyung runtuh pada abad ke-19 akibat peperangan dengan Belanda.\r\nBeberapa fakta menarik tentang Kerajaan Pagaruyung:\r\n\r\nKerajaan ini memiliki sistem pemerintahan yang unik, di mana raja dibantu oleh para penghulu adat.\r\nPagaruyung terkenal dengan seni bela diri silatnya yang disebut \"Pencak Silat Minangkabau\".\r\nKerajaan ini juga memiliki tradisi merantau yang kuat, di mana banyak penduduknya yang bermigrasi ke berbagai daerah di Asia Tenggara.', 'istanapagaruyuang.jpg', '2024-05-02 15:08:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id`, `nama`, `gambar`) VALUES
(1, 'Sutan Sjahrir', 'SutanSjahrir.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarawan`
--

CREATE TABLE `sejarawan` (
  `id` int(25) NOT NULL,
  `nama` text NOT NULL,
  `foto` varchar(250) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `asal` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sejarawan`
--

INSERT INTO `sejarawan` (`id`, `nama`, `foto`, `tgl_lahir`, `asal`, `jenis_kelamin`, `deskripsi`) VALUES
(1, 'Abdul Malik Karim Amrullah', 'buyahamka.jpg', '17 Februari 1908', 'Sungai Batang, Agam', 'Laki-Laki', 'Prof. Dr. H. Abdul Malik Karim Amrullah Datuk Indomo, populer dengan nama penanya, Hamka (17 Februari 1908 – 24 Juli 1981), adalah seorang ulama, filsuf, dan sastrawan Indonesia. Ia berkarier sebagai wartawan, penulis, dan pengajar. Ia sempat berkecimpung di politik melalui Masyumi sampai partai tersebut dibubarkan, menjabat Ketua Majelis Ulama Indonesia (MUI) pertama, dan aktif dalam Muhammadiyah hingga akhir hayatnya. Universitas al-Azhar dan Universitas Nasional Malaysia menganugerahkannya gelar doktor kehormatan, sementara Universitas Moestopo mengukuhkan Hamka sebagai guru besar. Namanya disematkan untuk Universitas Hamka milik Muhammadiyah dan masuk dalam daftar Pahlawan Nasional Indonesia.\r\n\r\nDibayangi nama besar ayahnya Abdul Karim Amrullah, Hamka remaja sering melakukan perjalanan jauh sendirian. Alih-alih menyelesaikan pendidikannya di Thawalib, ia merantau ke Jawa pada umur 16 tahun. Selang setahun, ia pulang membesarkan Muhammadiyah di Padang Panjang. Pengalaman ditolak sebagai guru di sekolah milik Muhammadiyah karena tak memiliki ijazah dan kemampuan berbahasa Arabnya yang terbatas mendorong Hamka muda pergi ke Makkah. Lewat bahasa Arab yang dipelajarinya, Hamka mendalami sejarah Islam dan sastra secara otodidak. Kembali ke Tanah Air, Hamka bekerja sebagai wartawan sambil menjadi guru agama di Deli. Setelah menikah, ia kembali ke Medan dan memimpin Pedoman Masyarakat. Lewat karyanya Di Bawah Lindungan Ka\'bah dan Tenggelamnya Kapal Van Der Wijck, nama Hamka melambung sebagai sastrawan. '),
(2, 'Tuanku Imam Bonjol\r\n', 'tuankuimambonjol.jpg', '1 Januari 1772', 'Bonjol, Luhak Agam, Pagaruyung', 'Laki-Laki', 'Tuanku Imam Bonjol lahir di Bonjol, Luhak Agam, Pagaruyung pada tanggal 1 Januari 1772 dengan nama asli Muhammad Syahab. Ayahnya adalah Khatib Bayanuddin yang merupakan seorang alim ulama dari Sungai Rimbang, Suliki, Lima Puluh Kota.\r\n\r\nIbunya Hamatun dan pamannya Syekh Usman adalah perantau bangsa Arab yang datang ke Alai Ganggo Mudik, dan diterima masuk ke dalam tatanan adat Minangkabau. Syekh Usman menjadi penghulu kaum keturunannya, sebagai bagian klan suku Koto.\r\n\r\nSebagai ulama dan pemimpin masyarakat setempat, Muhammad Syahab sempat mendapat beberapa gelar kehormatan seperti Peto Syarif, Malin Basa, dan yang terakhir Tuanku Imam. Dalam tradisi adat Minangkabau, Tuanku merupakan gelar kehormatan bagi pemimpin agama. Hanya ulama yang telah menguasai ilmu agama Islam yang berhak mendapatkan gelar ini.\r\nLatar Belakang Pendidikan\r\n\r\nPengaruh keagamaan dari sang ayah sangat melekat pada diri Tuanku Imam Bonjol. Sedari kecil, dirinya diminta sang ayah untuk rajin sholat lima waktu, serta diberikan ajaran Islam sesuai syariat yang ada dalam Al-Qur\'an dan Sunnah Nabi Muhammad SAW.\r\n\r\nSayangnya, sang ayah meninggal saat Syahab masih berusia 7 tahun. Setelah ayahnya meninggal, pendidikan Syahab dilanjutkan oleh sang nenek, Tuanku Bandaharo yang tinggal di Kampung Padang Lawas dalam kenagarian Ganggo Hilir.\r\n\r\nBersama Tuanku Bandaharo, Syahab pergi belajar agama Islam kepada Tuanku Koto Tuo, seorang ulama dengan pengetahuan agama yang sangat luas di Empat Angkat Candung. Dari Tuanku Koto Tuo, Syahab memperoleh ilmu fikih dalam Al-Qur\'an dan hadis Nabi.\r\n\r\nSebagai murid yang sangat cerdas, Syahab dapat mempelajari semua pelajaran yang diberikan Tuanku Koto Tuo dalam waktu singkat. Setelah lulus, akhirnya tugas pengajar Tuanku Koto Tuo diserahkan ke Syahab dan mulai sejak itu ia mendapat gelar Malin Basa.\r\n\r\nDengan rasa ingin tahu yang sangat tinggi, Malin Basa melanjutkan pendidikan agama Islamnya hingga ke Aceh. Perjuangannya menuju Aceh amatlah sulit dan ia mendalami agama Islam di Aceh selama 2 tahun.\r\n\r\nSelanjutnya kepada Tuanku Nan Renceh, Malin Basa menambah ilmu baru di Kamang. Karena kondisi di Minangkabau saat itu, Tuanku Nan Renceh tidak hanya mengajarkan pengetahuan agama Islam tetapi juga pengetahuan perang.\r\n\r\nBahkan pada akhirnya pendidikan Malin Basa di Kamang saat itu menitik beratkan ke pengetahuan perang. Bagaimana cara menunggangi kuda sambil memimpin pasukan, bagaimana taktik memimpin perang, bagaimana mencari tempat strategis untuk menyerang dan bertahan, dan ilmu perang lainnya\r\n'),
(3, 'Abdul Muis', 'abdulmuis.jpg', '3 Juli 1883', 'Sungai Puar, Agam, Sumbar', 'Laki-Laki', 'ini adalah pahlawan nasional dari Sumatera Barat yang merupakan Datuk Tumangguang Sutan Sulaiman. Beliau adalah seorang Demang yang selalu memberi perlawanan pada kebijakan Belanda di daerah Agam pada zamannya. Abdul Muis bergabung dengan Sarekat Islam, mendorong tokoh – tokoh Belanda untuk mendirikan Technische Hooge School, memperjuangkan kemerdekaan Indonesia hingga meninggal di Bandung pada 17 Juni 1959 di usia 75 tahun'),
(4, 'Bagindo Aziz Chan', 'BagindoAzizChan.jpg', '30 September 1910', 'Padang', 'Laki-Laki', 'Beliau adalah walikota kedua Padang setelah kemerdekaan, menggantikan Mr. Abubakar Jaar. Lahir di Padang pada 30 September 1910, beliau meninggal di usia 36 tahun. Ada dua monumen di kota Padang untuk mengenang jasa – jasanya, yaitu Simpang Tinju di persimpangan jalan Gajah Mada dan jalan Jhoni Anwar. Kemudian monumen kedua ada di dalam komplek Museum Adityawarman.'),
(5, 'Sutan Sjahrir', 'SutanSjahrir.jpg', '5 Maret 1909', 'Padang Panjang', 'Laki-Laki', 'Lahir di Padang Panjang pada 5 Maret 1909 dan meninggal di Zurich, Swiss pada 9 April 1966 di usia 57 tahun, Sutan Syahrir adalah perdana menteri pertama di Indonesia. Sutan Sjahrir juga saudara seayah dari Rohana Kudus, seorang aktivis dan wartawan wanita dari Koto Gadang, Agam. Bung Syahrir adalah perdana menteri pertama indonesia. Beliau juga terkenal sebagai jago diplomasi.'),
(6, 'Ruhana Kuddus', 'RuhanaKuddusjpg', ' 20 Desember 1884', 'Nagari Koto Gadang, sumatera barat', 'Perempuan', 'Salah satu pejuang wanita asal Sumbar ini lahir di Nagari Koto Gadang, Agam pada 20 Desember 1884 dari ayah bernama Mohamad Rasjad Maharadja Soetan dan ibu bernama Kiam. Ia adalah jurnalis perempuan pertama di Indonesia yang tidak mengecap pendidikan formal, melainkan belajar bersama ayahnya. Rohana mendirikan sekolah Keterampilan Khusus Perempuan pada tanggal 11 Februari 1911, memimpin koran ‘Perempuan Bergerak’, juga menjadi redaktur koran ‘Radio’ dan ‘Cahaya’, ia juga giat dalam memperjuangkan hak – hak perempuan.'),
(9, 'noverino', '', '12 janiari 2000', 'padang', 'laki laki', 'dia adalah sejarawan yang juraang terkenal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `nohp` int(15) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `username`, `password`, `nohp`, `nim`, `email`, `alamat`, `created`, `updated`) VALUES
(1, 'Ihsan Shadiq', 'ihsan12', 'b0baee9d279d34fa1dfd71aadb908c3f', 812331231, '2012312', 'ihsan12@gmail.com', 'padang', '2024-05-01 17:38:05', NULL),
(2, 'noverino', 'rino1', 'b0baee9d279d34fa1dfd71aadb908c3f', 82312123, '232123', 'rino@gmail.com', 'padang', '2024-05-01 17:54:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarawan`
--
ALTER TABLE `sejarawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sejarawan`
--
ALTER TABLE `sejarawan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
