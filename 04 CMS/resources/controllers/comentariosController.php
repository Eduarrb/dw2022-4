<?php
    function post_comentario($itemId){
        if(isset($_POST['enviar'])){
            if(!isset($_SESSION['user_rol'])){
                echo 'debes iniciar sesion o registrate';
            } else {
                $com_mensaje = limpiar_string(trim($_POST['com_mensaje']));
                $query = query("INSERT INTO comentarios (com_user_id, com_por_id, com_mensaje, com_fecha) VALUES ({$_SESSION['user_id']}, {$itemId}, '{$com_mensaje}', NOW())");
                confirm($query);
                set_mensaje("su mensaje ha sido enviado, espere a la aprobación del administrador 😁😁");
                redirect("portafolio.php?id={$itemId}");
            }
        }
    }
?>