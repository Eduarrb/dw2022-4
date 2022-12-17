<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    // require 'vendor/autoload.php';

    function send_email($email, $asunto, $mensaje){
        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->Host = 'smtp.mailtrap.io';
        $mail->SMTPAuth = true;
        $mail->Username = 'f17d1366d8ae77';
        $mail->Password = '9aeb0e810cd646';
        $mail->Port = 25;
        $mail->SMTPSecure = 'tls';
        $mail->isHTML(true);
        $mail->CharSet = 'UTF-8';

        $mail->setFrom('registro@mipagina.com', 'Registro');
        $mail->addAddress($email);
        $mail->Subject = $asunto;
        $mail->Body = $mensaje;
        if($mail->send()){
            $emailSent = true;
        }
    }
?>