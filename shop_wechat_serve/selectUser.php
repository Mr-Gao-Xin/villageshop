<?php
    include("./inc/dbconn.php");
    $sql="select * from user_info";
    $result=$conn->query($sql);
    if($result->num_rows >=0){
        while($rows=mysqli_fetch_assoc($result)){
            $likes[]=$rows;
        }
    }
    echo json_encode($likes);
?>