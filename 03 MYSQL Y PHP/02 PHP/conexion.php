<?php
    $conexion = mysqli_connect('localhost', 'root', '', 'dw2022_5');
    if(!$conexion){
        die('Falló la conexion ' . mysqli_error($conexion));
    }
?>