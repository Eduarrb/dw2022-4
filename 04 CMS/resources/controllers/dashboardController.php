<?php
    function get_portafolioCanti(){
        $query = query("SELECT * FROM portafolio WHERE por_user_id = {$_SESSION['user_id']}");
        confirm($query);
        return contar_filas($query);
    }

    function get_portafolioTotalVistas(){
        $query = query("SELECT SUM(por_vistas) AS vistas FROM portafolio WHERE por_user_id = {$_SESSION['user_id']}");
        confirm($query);
        $fila = fetch_array($query);
        if($fila['vistas'] == ''){
            return 0;
        } else {
            return $fila['vistas'];
        }
    }
    function get_comentariosCanti(){
        $query = query("SELECT * FROM portafolio a INNER JOIN comentarios b ON a.por_id = b.com_por_id WHERE a.por_user_id = {$_SESSION['user_id']}");
        confirm($query);
        return contar_filas($query);
    }
?>
