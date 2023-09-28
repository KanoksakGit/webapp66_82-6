<?php
    require 'userconn.php';
    $sql = "SELECT * FROM user";
    $result = $conn->query($sql);
    if(!$result){
        die("Error : ". $conn->$conn_error);
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>User Bio</title>
</head>

<body>
    <div class="container">
        <h1>User Bio</h1><br>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col-4">ชื่อผู้ใช้</th>
                    <th scope="col-4">มือถือ</th>
                    <th scope="col-4">อีเมล</th>
                    <th scope="col-4">ที่อยู่</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr><td>".$row["user_id"]."</td>"."<td>".$row["user_name"]."</td>"."<td>".$row["user_moblie"]."</td>"."<td>".$row["user_email"]."</td>"."<td>".$row["user_address"]."</td>"."<td>"."<a class='btn btn-warning' href='editbio.php?user_id=".$row["user_id"]."'>Edit</a>"."</td>"."<td>"."<a class='btn btn-danger' href='deletebio.php?user_id=".$row["user_id"]."'>Delete</a>"."</td>";
                            echo "</tr>";    
                        }
                    }else {
                        echo "0 results";
                    }
                    $conn->close();
                ?>
            </tbody>
        </table>
        <a class="btn btn-success" href='insertbio.php'>Insert User</a>
    </div>
</body>

</html>