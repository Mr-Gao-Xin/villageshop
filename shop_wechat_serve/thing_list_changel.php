<?php
    include("./inc/dbconn.php");
    $changel_id=$_GET['changel_id'];
    if($changel_id==0){
        $sql="select * from thing";
    }else{
        $sql="select * from thing where thing_sel={$changel_id}";
    }
    $result=$conn->query($sql);
    if($result->num_rows >=0){
        while($rows=mysqli_fetch_assoc($result)){
            $likes[]=$rows;
        }
    }
    echo json_encode($likes);
?>