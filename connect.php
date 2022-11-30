<?php

$host = 'localhost';
$name = 'root';
$pass = '';
$db = 'treino';

$mysqli = new mysqli($host, $name, $pass, $db);

if ($mysqli->connect_errno) {
    die("Connect failed:$mysqli->connect_error");
}

?>