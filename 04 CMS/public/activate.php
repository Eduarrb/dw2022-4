<?php require_once('../resources/config.php'); ?>
<?php
    if(!isset($_GET['email']) || !isset($_GET['token'])){
        set_mensaje(display_msj("Datos de verificacion incorrectos", "danger"));
        redirect("register.php");
    } else {
        // echo 'todo ok';
        activar_usuario();
    }
?>