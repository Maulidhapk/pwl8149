<?php

require_once('lib/view.php');

$data['title'] = "Manage Users";
$data['page'] = "v_user.php";
require_once View::getView('dashboard.php', $data);