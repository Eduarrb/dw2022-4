<?php
    session_start();
    $conexion = mysqli_connect('localhost', 'root', '', 'agencia');
    mysqli_set_charset($conexion, "utf8");

    function query($sql){
        global $conexion;
        return mysqli_query($conexion, $sql);
    }
?>