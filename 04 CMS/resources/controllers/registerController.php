<?php
    function validar_user_reg(){
        $min = 3;
        $max = 10;
        $errores = [];

        if(isset($_POST['registrar'])){
            $user_nombres = limpiar_string(trim($_POST['user_nombres']));
            $user_apellidos = limpiar_string(trim($_POST['user_apellidos']));
            $user_email = limpiar_string(trim($_POST['user_email']));
            $user_pass = limpiar_string(trim($_POST['user_pass']));
            $user_passConfirmar = limpiar_string(trim($_POST['user_passConfirmar']));

            if(strlen($user_nombres) < $min){
                $errores[] = "Tus nombres no deben ser menos de {$min} caracteres";
            }
            if(strlen($user_nombres) > $max){
                $errores[] = "Tus nombres no deben tener mas de {$max} caracteres";
            }
            if(strlen($user_apellidos) < $min){
                $errores[] = "Tus apellidos no deben ser menos de {$min} caracteres";
            }
            if(strlen($user_apellidos) > $max){
                $errores[] = "Tus apellidos no deben tener mas de {$max} caracteres";
            }
            if(email_existe($user_email)){
                $errores[] = "El correo ingresado ya existe, intente con otra cuenta";
            }
            if($user_pass != $user_passConfirmar){
                $errores[] = "Las contraseñas deben ser iguales";
            }
            if(!empty($errores)){
                // print_r($errores);
                foreach($errores as $error){
                    echo display_msj($error, "danger");
                }
            } else {
                if(registro_usuario()){
                    set_mensaje(display_msj("Registro satisfactorio", "success"));
                    redirect("register.php");
                }
                else{
                    set_mensaje(display_msj("Lo sentimos, no pudimos registrar tu cuenta. Intentalo mas tarde", "danger"));
                    redirect("register.php");
                }
            }
        }
    }

    function registro_usuario(){
        return false;
    }

?>