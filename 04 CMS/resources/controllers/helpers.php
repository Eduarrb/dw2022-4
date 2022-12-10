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
    function limpiar_string($str){
        global $conexion;
        return mysqli_real_escape_string($conexion, $str);
    }
    function redirect($location){
        header("Location: {$location}");
    }
    function set_mensaje($msj){
        if(!empty($msj)){
            $_SESSION['mensaje'] = $msj;
        } else {
            $msj = '';
        }
    }
    function mostrar_msj(){
        if(isset($_SESSION['mensaje'])){
            echo $_SESSION['mensaje'];
            unset($_SESSION['mensaje']);
        }
    }
    function display_msj($msj, $tipo){
        $msj = <<<DELIMITADOR
            <div class="alert alert-$tipo alert-dismissible fade show" role="alert">
                <strong>Holy guacamole!</strong> $msj.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
DELIMITADOR;
        return $msj;
    }
?>