


<?php
require_once 'Database.php';

Class Register{
    private $username;
    private $email;

    public function __construct($username, $email) {
        $this->username = $username;
        $this->email = $email;
    }


    public function registerUser(string $hashed_password): void {
        try {
            $database = new Database('localhost', 'root', 'root', 'whatodo');
            $pdo = $database->connect();
            // Insérer l'utilisateur
            $stmt = $pdo->prepare("INSERT INTO users (username, email, password) VALUES (:username, :email, :password)");
            $stmt->execute([
                'username' => $this->username,
                'email' => $this->email,
                'password' => $hashed_password
            ]);

            $_SESSION['success'] = "Inscription réussie ! Vous pouvez vous connecter.";
            header("Location: log.php");
            exit();
        } catch (PDOException $e) {
            die("Erreur : " . $e->getMessage());
        }

}
    
}

?>


