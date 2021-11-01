<?php
$sql_host = "localhost";
$sql_db   = "aqua3_web";
$sql_user = "aqua3_web";
$sql_pass = "aqua3_web";
$pre  = "web_";
$sql_conn = mysql_connect($sql_host, $sql_user, $sql_pass) or die (mysql_error());
mysql_select_db($sql_db, $sql_conn) or die (mysql_error());
?>