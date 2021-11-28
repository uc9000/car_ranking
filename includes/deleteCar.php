<?php
require_once ("dbh.php");
session_start();
$sql = "DELETE FROM cars WHERE id=" . $_GET['id'] . ";";
mysqli_query($link, $sql);
header("location: ../index.php");
?>