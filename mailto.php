<?php 

  $popup_name   = $_POST['u_name'];
  $popup_phone  = $_POST['u_phone'];
  $popup_location  = $_POST['u_location'];
  $popup_count  = $_POST['count_b'];


  $email_from = 'orders@akwatoria.com.ua';
  $email_subject = "Замовлення з сайту AkwaToria.";
  $email_body = "Нове замовлення ! \n Ім'я: " . $popup_name . " \n Номер телефона: " . $popup_phone . " \n За адресою: " . $popup_location . "\n Кількість: " . $popup_count . " бутлів";


  $to = "genastar22@gmail.com";
  $headers = "From: AkwaToria";
  mail($to,$email_subject,$email_body,$headers);

  header("Location: ".$_SERVER['HTTP_REFERER']); exit();
?>