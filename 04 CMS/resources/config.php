<?php
    ob_start();

    session_start();
    // session_destroy();
    // echo DIRECTORY_SEPARATOR;
    defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR);
    // echo DS;

    // ⚡⚡ CONSTATES PARA RUTAS RELATIVAS -> VIEWS
    // echo __DIR__;
    defined("VIEW_FRONT") ? null : define("VIEW_FRONT", __DIR__ . DS . "views" . DS . "front" );
    defined("VIEW_BACK") ? null : define("VIEW_BACK", __DIR__ . DS . "views" . DS . "back" );
    // echo VIEW_BACK;

    // ⚡⚡ DEFINIR PARAMETROS DE CONEXION CON CONSTANTES
    // HOST, USER, PASS, DB
    defined("DB_HOST") ? null : define("DB_HOST", "localhost");
    defined("DB_USER") ? null : define("DB_USER", "root");
    defined("DB_PASS") ? null : define("DB_PASS", "");
    defined("DB_NAME") ? null : define("DB_NAME", "agencia");

    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    // if($conexion){
    //     echo 'conexion exitosa';
    // }
    mysqli_set_charset($conexion, "utf8");
    require_once("caller.php");
?>