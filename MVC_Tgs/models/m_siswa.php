<?php

require_once('lib/DBClass.php');

class Siswa{

	private $db;

	public function Siswa(){
		$this->db = new DBClass();
	}

	public function readAllSiswa(){
		$query = "Select * from siswa s join nationality n on
			s.id_nationality = n.id_nationality";
		return $this->db->getRows($query);	
	}

	public function readSiswa($id){
		$query = "Select * from siswa s join nationality n on
			s.id_nationality = n.id_nationality where id_siswa=".$id;
		return $this->db->getRows($query);		
	}

	public function createSiswa($id_nationality, $nis, $full_name, $email, $ff){
		$query = "Insert into siswa (id_nationality, nis, full_name, email, foto)
			values('$id_nationality', '$nis', '$full_name', '$email', '$ff')";
		$this->db->putRows($query);	
	}

	public function updateSiswa($id, $data){
		$name = $data['input_name'];
		$email = $data['input_email'];
		$nation = $data['input_nationality'];
		$foto = $data['foto'];

		$query = "update siswa set full_name='$name', email='$email', foto='$foto'";
		if($nation>0) $query.=",id_nationality='$nation'";
		$query.= " where id_siswa=$id";
		$this->db->putRows($query);		
	}

	public function deleteSiswa($id){
		$sql = "Delete from siswa Where id_siswa=$id";
		$this->db->putRows($sql);		
	}


}