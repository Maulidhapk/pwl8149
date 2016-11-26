<?php

require_once('lib/view.php');

$data['title'] = "Payment";
$data['page'] = "v_payment.php";
require_once View::getView('dashboard.php', $data);