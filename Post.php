<?php
try {
    require_once './Conncet_db.php';
    $mConnect_Mysql = new connect_Mysql();
    $pdo = $mConnect_Mysql->connect();
    $sql = "INSERT INTO `t_users` (`name` ,`password`)VALUES (:login, :password)";
    $stmt = $pdo->prepare($sql);
    $bool = $stmt->execute(array(':login' => $_POST["name"], ':password' => $_POST["email"]));
    if($bool==1)
    {
        echo 'true';
    }
} catch (Exception$e) {

    
    echo 'false';
}
?>
