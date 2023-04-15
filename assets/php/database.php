<?php 

class database
{
    private $host;
    private $user;
    private $pass;
    private $dbname;
    private $status;
    private $conn;

    public function __construct()
    {
        $this->host = 'localhost';
        $this->user = 'root';
        $this->pass = 'Qwerty@$12344';
        $this->dbname = 'guestbook';
        $this->status = false;

        $this->conn = $this->init();
    }

    public function getConn()
    {
        return $this->conn;
    }

    public function closeConn()
    {
        $this->conn = null;
    }

    public function getStatus()
    {
        return $this->status;
    }

    private function init()
    {
        try {
            $conn = new PDO("mysql:host=$this->host; dbname=".$this->dbname, $this->user, $this->pass);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->status = true;

            return $conn;
        } catch (PDOException $e) {
            echo "Database connection error: " . $e->getMessage();
        }
    }
}


?>