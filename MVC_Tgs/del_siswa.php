<?php

require_once('lib/view.php');
require_once('models/m_siswa.php');
require_once('models/m_nationality.php');

$siswa = new Siswa();
$nat = new Nationality();

$id = $_GET['id'];

if(!empty($id)){
	$siswa->deleteSiswa($id);
	$success = "Data Berhasil di Hapus";
}

$data['title'] = "Students";
$data['page'] = "v_siswa.php";
$data['siswa'] = $siswa->readAllSiswa();
$data['nat'] = $nat->readAllNationality();

require_once View::getView('dashboard.php', $data);

