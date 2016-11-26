<?php

require_once('lib/view.php');
require_once('models/m_siswa.php');
require_once('models/m_nationality.php');

$siswa = new Siswa();
$nat = new Nationality();

$data['title'] = "Students";
$data['page'] = "v_siswa.php";

if(!empty($_POST)){

	$nis    = $_POST['input_nis'];
	$name   = $_POST['input_name'];
	$email  = $_POST['input_email'];
	$id_nat = $_POST['input_nationality'];
	
	$fn = $_FILES['input_file'];
	$ff = 'img/'.date('YmdHis').'.jpg';
	
	copy($fn['tmp_name'], $ff);
	$siswa->createSiswa($id_nat, $nis, $name, $email, $ff);
	$success = "Data Berhasil di Tambahkan";

}

$data['siswa'] = $siswa->readAllSiswa();
$data['nat'] = $nat->readAllNationality();

require_once View::getView('dashboard.php', $data);