<?php
	session_start();
	include("util.php");

	$codmod = $_POST["codmod"];
	$clave = $_POST["clave"];

	$link=conectarse();
	$sql = "select accesos.codmod, accesos.clave, iiee.nombre from accesos, iiee where accesos.codmod = '$codmod' and accesos.clave = '$clave' and accesos.codmod = iiee.codmod; ";
	// select accesos.codmod, accesos.clave, iiee.nombre from accesos, iiee where accesos.codmod = '239848' and accesos.clave = 'jma' and accesos.codmod = iiee.codmod;
	$result = mysqli_query($link, $sql);

	if (mysqli_num_rows($result) > 0) {
	 	$row = mysqli_fetch_assoc($result);
		$_SESSION["codmod"] = $codmod;
		$_SESSION["nombre"] = $row["iiee.nombre"];
		header('Location: datos.php');
	} else 
    	header('Location: inicio.html');
?>
