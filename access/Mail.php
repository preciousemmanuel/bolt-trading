<?php

/**
 * 
 */

include 'mailer/PHPMailerAutoload.php';


class Mail
{
	
	public static function sendMail($to,$subj,$msg){
		$mail=new PHPMailer;
		//$mail->IsSMTP();                           
		$mail->SMTPDebug = 0;
		$mail->SMTPAuth = true; 
		$mail->SMTPSecure = 'ssl';
		$mail->Host = 'admin@neocapitals.com';  
		$mail->Port = 465;  
		$mail->IsHTML(true);     
		$mail->Username = 'admin@neocapitals.com';         
		$mail->Password = 'main@@2022';                         
		$mail->setFrom('admin@neocapitals.com', 'Neo Capitals');      
		$mail->Subject = $subj;
		$mail->Body    = $msg;
		$mail->AltBody=strip_tags($msg);
		$mail->addAddress($to); 
		
		if(!$mail->send()) {
		    $ret = 'Mailer Error: ' . $mail->ErrorInfo;
		} else {
		    $ret = "success";
		}
	    return $ret;
		}
	}



?>