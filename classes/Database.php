<?php


class Database {

    private PDO $connexion;

    public function __construct(private string $host, private string $username, private string $password, private string  $database)
    {
    }

    public function connect(): PDO {
        // Database connection code
        $dsn = "mysql:host=$this->host;dbname=$this->database";
        $this->connexion = new PDO($dsn, $this->username, $this->password);
        $this->connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $this->connexion;
    }

    // Optional: a getter method to access the connexion if needed elsewhere
    public function getConnexion(): PDO {
        return $this->connexion;
    }
}
?>