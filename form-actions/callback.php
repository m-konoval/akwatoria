<?php 

  $callback   = $_POST['callback_phone'];

  $email_from = 'orders@akwatoria.com.ua';
  $email_subject = "Передзвонити, з сайту AkwaToria.";
  $email_body = "Передзвоніть на номер: " . $callback;


  $to = "genastar22@gmail.com";
  $headers = "From: AkwaToria-call";
  mail($to,$email_subject,$email_body,$headers);

  header("Location: ".$_SERVER['HTTP_REFERER']); exit();
?>