<?php
    require_once("db_con.php");
    try{
        $query = query("SELECT por_titulo, por_vistas FROM portafolio WHERE por_user_id = {$_SESSION['user_id']}");
        $res = mysqli_fetch_all($query, MYSQLI_ASSOC);
        $jsonResp = json_encode(['resultado' => $res]);
        echo $jsonResp;
    } catch(Exception $e){
        error_log($e->getMessage());
        echo json_encode($e->getMessage());
    }
?>