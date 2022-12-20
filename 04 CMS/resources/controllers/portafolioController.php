<?php
    // ⚡⚡ FRONT
    function get_portafolio_front(){
        $query = query("SELECT por_id, por_titulo, por_subtitulo, por_imgSmall FROM portafolio WHERE por_status = 'publicado' AND por_delete = 1 ORDER BY por_fecha DESC");
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
    // ⚡⚡ BACK
    function get_portafolio_back(){
        $query = query("SELECT * FROM portafolio WHERE por_status = 'publicado' AND por_delete = 1 ORDER BY por_fecha DESC");
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
                        <a href="#" class="btn btn-small btn-info">editar</a>
                    </td>
                    <td>
                        <a href="#" class="btn btn-small btn-danger">borrar</a>
                    </td>
                </tr>
DELIMITADOR;
            echo $item;
        }
    }
?>