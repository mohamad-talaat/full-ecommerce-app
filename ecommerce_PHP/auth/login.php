<?php
include "../connect.php";

$email = filterRequest("email"); 
$password = sha1($_POST['password']);

/* $stmt = $con->prepare("SELECT * FROM `users` WHERE users_email = ? AND users_password = ? AND users_approve = 1");//users_approve اللي عامل كود التحقق يعني 
 $stmt->execute(array($email , $password));
$count= $stmt->rowCount(); 
 $data = $stmt->fetch( PDO::FETCH_ASSOC);

 result($count);  */
 getData("users" , "users_email = ? AND users_password = ? " , array($email , $password))

/* 
$stmt->execute(array($email,$password));
$count = $stmt->rowCount();
if($count > 0){echo json_encode(array("status"=> "success" , "data" => $data
    )) ;} 
else { echo json_encode(array("status"=> "Fail"));} */
?>


