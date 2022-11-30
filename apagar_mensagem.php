<?php

include "connect.php";
if(!isset($_SESSION['admin'])) {
    header("Location: index.php");
}


$id = $_GET['id'];

$sql_query = $mysqli->query("DELETE FROM mensagens WHERE id = '$id'");

header('Location: index.php?pg=gerenciar_mensagens');


