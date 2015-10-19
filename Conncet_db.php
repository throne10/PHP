<?php

class connect_Mysql
{
    /**
     * @return PDO
     */
    function connect()
    {
        try {
            $dbh = new PDO('mysql:host=localhost;port=3306; dbname=blog', 'root', '2806085', array(
                PDO::ATTR_PERSISTENT => true
            ));
            $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dbh->exec("SET CHARACTER SET utf8");

            return $dbh;
        } catch (PDOException$e) {
            print"Error!:" . $e->getMessage() . "<br/>";
            die();
        }
    }
}

?>
