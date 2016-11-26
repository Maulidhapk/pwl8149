<?php

require_once 'DBClass.php';
$db = new DBClass();

$id = $_GET['id'];
$sql = "delete from nationality where id_nationality=$id";

$db->putRows($sql);

header('location:nat.php');

?>