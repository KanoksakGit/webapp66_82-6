<?php
require 'userconn.php';
$sql_update="UPDATE user SET user_name='$_POST[user_name]',user_moblie='$_POST[user_moblie]' ,user_email='$_POST[user_email]' ,user_address='$_POST[user_address]' WHERE user_id='$_POST[user_id]' ";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Edit Success <br>";
header("refresh: 1; url=http://localhost/Test28/mainmenu.php");
}

?>