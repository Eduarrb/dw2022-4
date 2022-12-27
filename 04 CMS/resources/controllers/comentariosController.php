<?php
    // ⚡⚡ FRONT
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
    // ⚡⚡ BACK
    function get_comentariosPorEstado($status){
        $query = query("SELECT * FROM comentarios a INNER JOIN usuarios b ON a.com_user_id = b.user_id INNER JOIN portafolio c ON a.com_por_id = c.por_id WHERE a.com_status = {$status} AND c.por_user_id = {$_SESSION['user_id']}");
        confirm($query);
        while($fila = fetch_array($query)){
            $usuario = $fila['user_nombres'] . " " . $fila['user_apellidos'];
            $fecha = explode(' ', $fila['com_fecha'])[0];
            $hora = explode(' ', $fila['com_fecha'])[1];
            $comentario = <<<DELIMITADOR
                <tr>
                    <td>{$usuario}</td>
                    <td>
                        <a href="../portafolio.php?id={$fila['por_id']}" target="_blank">{$fila['por_titulo']}</a>
                    </td>
                    <td>
                        {$fila['com_mensaje']}
                    </td>
                    <td>{$fecha}</td>
                    <td>{$hora}</td>
                    <td>
                        <a href="javascript:void(0)" class="btn btn-small btn-success delete_link" titulo="Aprobar comentario" action="Aprobar" table="comentarios" rel="{$fila['com_id']}" param="aprobar">aprobar</a>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="btn btn-small btn-danger delete_link" titulo="Desaprobar comentario" action="Desaprobar" table="comentarios" rel="{$fila['com_id']}" param="desaprobar">Desaprobar</a>
                    </td>
                </tr>
DELIMITADOR;
            echo $comentario;
        }
    }
?>