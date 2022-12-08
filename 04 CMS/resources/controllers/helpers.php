<?php
    function query($consulta){
        global $conexion;
        return mysqli_query($conexion, $consulta);
    }
?>