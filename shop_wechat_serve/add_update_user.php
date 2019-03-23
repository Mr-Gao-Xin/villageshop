<?php
    include("./inc/dbconn.php");
    $openid=$_GET['openid'];
    //先查询数据库是偶有此openid，有，则进行更新，没有，就添加
    $sql="select * from user_info where openid={$openid}";
    $user_avr=$_GET['user_avr'];
    // 获取当前时间
    $time=time();
    $result=$conn->query($sql);
    if($result->num_rows>=0){
        // 说明有当前openid的存在 更新登录时间即可
        $sql1="update user_info set user_last_login_time={$time},user_avr={$user_avr} where openid={$openid}";
        $result1=$conn->query($sql1);
        echo '登录成功';
    }else{
        // 当前openid不存在
        $wexin_info=$_GET['wexin_info'];
        $user_sex=$_GET['user_sex'];
        $user_age=$_GET['user_age'];
        $user_addr=$_GET['user_addr'];
        $user_reg_time=$_GET['user_reg_time'];
        $sql2="insert into user_info (wexin_info,user_sex,user_age,user_addr,user_reg_time,user_last_login_time,openid,user_avr) values ($wexin_info,$user_sex,$user_age,$user_addr,$time,$time,$openid,$user_avr)";
        $result2=$conn->query($sql2);
        echo '添加成功';
    }
?>