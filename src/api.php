var coupon="<?php
error_reporting(E_ALL);
$cip = @addslashes( $_SERVER['HTTP_CLIENTIP'] );
$ali = @addslashes( $_GET['ali'] );
$how = @addslashes( $_GET['how'] );
switch ($ali){
  	//case "ap6214f2r@aliyun.com":
  	//    echo "券商可恶！\";";die();
  	//    break;
}
/*替换为你自己的数据库名（可从管理中心查看到）*/
$dbname = 'nnLriyRpgBmrqrmDyvDz';
 
/*从环境变量里取出数据库连接需要的参数*/
$host = getenv('HTTP_BAE_ENV_ADDR_SQL_IP');
$port = getenv('HTTP_BAE_ENV_ADDR_SQL_PORT');
$user = getenv('HTTP_BAE_ENV_AK');
$pwd = getenv('HTTP_BAE_ENV_SK');
 
/*接着调用mysql_connect()连接服务器*/
$link = @mysql_connect("{$host}:{$port}",$user,$pwd,true);
if(!$link) {
    die("Connect Server Failed: " . mysql_error());
}
if(!mysql_select_db($dbname,$link)) {
    die("Select Database Failed: " . mysql_error($link));
}
$sql1 = "SELECT * FROM coupon WHERE ( ((use_id = '{$ali}' AND use_ip = '{$cip}') OR (use_id = '{$ali}' AND use_ip = '') OR (use_ip = '{$cip}' AND use_id = '')) OR (use_id = '' AND use_ip = '') ) AND note = '{$how}' limit 1";
//echo $sql1;
$result = mysql_query( $sql1 );

while($row = mysql_fetch_array($result)){
    mysql_query("UPDATE coupon SET use_id = '{$ali}', use_ip = '{$cip}' WHERE coupon.coupon = '{$row['coupon']}'");
    echo $row['coupon'];
}

mysql_close($link);
?>";