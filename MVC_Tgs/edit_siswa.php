<?php

require_once('lib/view.php');
require_once('models/m_siswa.php');
require_once('models/m_nationality.php');

$siswa = new Siswa();
$nat = new Nationality();

$data['title'] = "Edit Student";
$data['page'] = "v_edit_siswa.php";
$data['nat'] = $nat->readAllNationality();

$id = $_GET['id'];
$s = $siswa->readSiswa($id);

if(!empty($_POST)){

	$fn = $_FILES['input_file'];
	$ff = 'img/'.date('YmdHis').'.jpg';
	
	copy($fn['tmp_name'], $ff);
	$_POST['foto'] = $ff;

	$siswa->updateSiswa($id, $_POST);
	$success = "Data Berhasil di Update";

}	

$data['st'] = $s[0];

require_once View::getView('dashboard.php', $data);

