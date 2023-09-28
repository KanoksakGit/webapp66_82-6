<?php
require 'userconn.php';
$sql_update="INSERT INTO user(user_id,user_name,user_moblie,user_email,user_address) VALUES ('$_POST[user_id]','$_POST[user_name]','$_POST[user_moblie]' ,'$_POST[user_email]' ,'$_POST[user_address]')";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Insert Success <br>";
header("refresh: 1; url=http://localhost/Test28/mainmenu.php");
}

?>