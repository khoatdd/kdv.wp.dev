<?php
$kn = mysql_connect("localhost","root","");
if (!$kn) {
	echo "Không thể kết nối!";
	exit;
}
$sl = mysql_select_db("kdv.cea.vnuhcm.edu.vn", $kn);
if (!$sl) {
	echo 'Không thể select db';
	die();
}
mysql_query("set names 'utf8'");


?>