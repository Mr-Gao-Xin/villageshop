<?php
    // 生命code用来接收传来的code'值
    $code=$_GET['code'];
    // $code="111111111";
    // appid
    $appid="wx0a07f7a8a3ee5327";
    // secret
    $secret="b7d5edd9d5f8b25f98384b6569026073";
    // api
    $api="https://api.weixin.qq.com/sns/jscode2session?appid={$appid}&secret={$secret}&js_code={$code}&grant_type=authorization_code";
    // 上传的代码// 获取get请求
    function httpGet($url) {//https不是必需的
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_TIMEOUT, 500);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);//同时关闭这2项
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);//同时关闭这2项即可跳过https验证
        curl_setopt($curl, CURLOPT_URL, $url);
        $res = curl_exec($curl);
        curl_close($curl);
        return $res;
    };
    // 发送
    $str=httpGet($api);
    echo $str;
?>