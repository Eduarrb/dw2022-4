<?php
    function query($consulta){
        global $conexion;
        return mysqli_query($conexion, $consulta);
    }

    function fetch_array($query){
        return mysqli_fetch_array($query);
    }

    function confirm($query){
        global $conexion;
        if(!$query){
            die("Falló la conexión " . mysqli_error($conexion));
        }
    }
?>