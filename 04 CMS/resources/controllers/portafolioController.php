<?php
    // ⚡⚡ FRONT
    function get_portafolio_front(){
        $query = query("SELECT por_id, por_titulo, por_subtitulo, por_imgSmall FROM portafolio WHERE por_status = 'publicado' AND por_delete = 1 ORDER BY por_id DESC");
        confirm($query);
        while($fila = fetch_array($query)){
            $item = <<<DELIMITADOR
                <a href="portafolio.php?id={$fila['por_id']}" class="portafolio__contenedor__box__item">
                    <div class="portafolio__contenedor__box__item__imgBox">
                        <img src="img/portafolio/{$fila['por_imgSmall']}" alt="{$fila['por_titulo']}">
                        <div>
                            <i class="fa-solid fa-plus"></i>
                        </div>
                    </div>
                    <div class="portafolio__contenedor__box__item__data pt-3 pb-3">
                        <h3 class="titulo-n3 text-center">{$fila['por_titulo']}</h3>
                        <p class="resumen-n3 text-center text-italic">{$fila['por_subtitulo']}</p>
                    </div>
                </a>
DELIMITADOR;
            echo $item;
        }
    }
    // 🔥🔥 AMBOS
    function get_portafolio_item($urlParam){
        if(isset($_GET["{$urlParam}"])){
            $id = limpiar_string(trim($_GET["{$urlParam}"]));
            $query = query("SELECT * FROM portafolio WHERE por_id = {$id} AND por_user_id = {$_SESSION['user_id']}");
            confirm($query);
            return fetch_array($query);
        }
    }

    // ⚡⚡ BACK
    function get_statusItem($status){
        if($status == "publicado"){
            ?>
                <option value="pendiente">pendiente</option>
        <?php }
        else {
            ?>
                <option value="publicado">publicado</option>
        <?php }
    }
    function get_portafolio_back($status){
        $query = query("SELECT * FROM portafolio WHERE por_status = '{$status}' AND por_delete = 1 ORDER BY por_id DESC");
        confirm($query);
        while($fila = fetch_array($query)){
            $item = <<<DELIMITADOR
                <tr>
                    <td>{$fila['por_titulo']}</td>
                    <td>
                        <img src="../img/portafolio/{$fila['por_imgSmall']}" alt="" width="100">
                    </td>
                    <td style="width: 40%">
                        {$fila['por_contenido']}
                    </td>
                    <td>{$fila['por_fecha']}</td>
                    <td>{$fila['por_status']}</td>
                    <td>{$fila['por_vistas']}</td>
                    <td>
                        <a href="index.php?portafolio_edit={$fila['por_id']}" class="btn btn-small btn-info">editar</a>
                    </td>
                    <td>
                        <a href="#" class="btn btn-small btn-danger">borrar</a>
                    </td>
                </tr>
DELIMITADOR;
            echo $item;
        }
    }

    function post_portafolio_add(){
        if(isset($_POST['guardar'])){
            $por_titulo = limpiar_string(trim($_POST['por_titulo']));
            $por_subtitulo = limpiar_string(trim($_POST['por_subtitulo']));
            $por_contenido = limpiar_string(trim($_POST['por_contenido']));
            $por_status = limpiar_string(trim($_POST['por_status']));
            
            $arrayImgsNombres = [];
            for($i = 0; $i < 2; $i++){
                $arrayImgsNombres[$i] = md5(uniqid()) . "." . explode(".", $_FILES['img']['name'][$i])[1];
                move_uploaded_file($_FILES['img']['tmp_name'][$i], "../img/portafolio/{$arrayImgsNombres[$i]}");
            }

            $query = query("INSERT INTO portafolio (por_user_id, por_titulo, por_subtitulo, por_imgSmall, por_imgLarge, por_contenido, por_fecha, por_status) VALUES ({$_SESSION['user_id']}, '{$por_titulo}', '{$por_subtitulo}', '{$arrayImgsNombres[0]}', '{$arrayImgsNombres[1]}', '{$por_contenido}', NOW(), '{$por_status}')");
            confirm($query);
            set_mensaje(display_msj("Item agregado correctamente", "success"));
            redirect("index.php?portafolio");
        }
    }
    function post_portafolio_edit($id, $imgSmall, $imgLarge){
        if(isset($_POST['editar'])){
            $por_titulo = limpiar_string(trim($_POST['por_titulo']));
            $por_subtitulo = limpiar_string(trim($_POST['por_subtitulo']));
            $por_contenido = limpiar_string(trim($_POST['por_contenido']));
            $por_status = limpiar_string(trim($_POST['por_status']));

            $arrayImgsNombres = [];
            $imgGuardadas = [$imgSmall, $imgLarge];
            // print_r($imgGuardadas);
            for($i = 0; $i < 2; $i++){
                // echo $_FILES['img']['name'][$i];
                if($_FILES['img']['name'][$i] != ''){
                    $arrayImgsNombres[$i] = md5(uniqid()) . "." . explode(".", $_FILES['img']['name'][$i])[1];
                    move_uploaded_file($_FILES['img']['tmp_name'][$i], "../img/portafolio/{$arrayImgsNombres[$i]}");
                    $imgLocation = "../img/portafolio/{$imgGuardadas[$i]}";
                    unlink($imgLocation);
                } else {
                    $arrayImgsNombres[$i] = $imgGuardadas[$i];
                }
            }
            // print_r($arrayImgsNombres);
            $query = query("UPDATE portafolio SET por_titulo = '{$por_titulo}', por_subtitulo = '{$por_subtitulo}', por_imgSmall = '{$arrayImgsNombres[0]}', por_imgLarge = '{$arrayImgsNombres[1]}', por_contenido = '{$por_contenido}', por_status = '{$por_status}' WHERE por_id = {$id}");
            confirm($query);
            set_mensaje(display_msj("Item editado correctamente", "success"));
            redirect("index.php?portafolio_edit={$id}");
        }
    }
?>