<?php
if(!isset($_GET['user_id'])){
    header("refresh: 0; url=http://localhost/Test28/mainmenu.php");
}
require 'userconn.php';
$sql = "SELECT * FROM user WHERE user_id='$_GET[user_id]'";
$result = $conn->query($sql);
$row = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit</title>
</head>

<body class="container">
    <form id="form1" name="form1" method="post" action="editsuccess.php">
        <p>

            <label for="user_id">ID</label>
            <input type="text" name="user_id" id="user_id" value="<?=$row['user_id'];?>">

        </p>
        <p>

            <label for="user_name">ชื่อผู้ใช้</label>
            <input type="text" name="user_name" id="user_name" value="<?=$row['user_name'];?>" />

        </p>

        <p>

            <label for="user_moblie">มือถือ</label>

            <input type="text" name="user_moblie" id="user_moblie" value="<?=$row['user_moblie'];?>" />

        </p>

        <p>

            <label for="user_email">อีเมล</label>

            <input type="text" name="user_email" id="user_email" value="<?=$row['user_email'];?>" />

        </p>

        <p>

            <label for="user_address">ที่อยู่</label>

            <input type="user_address" name="user_address" id="user_address" value="<?=$row['user_address'];?>" />

        </p>
        <input type="submit" class="btn btn-success" value="บันทึก">
        <a class="btn btn-success" href='mainmenu.php'>Home</a>
    </form>
</body>

</html>