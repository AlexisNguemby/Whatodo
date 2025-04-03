<?php
require_once 'Database.php';


class Login {

    public function __construct(private string $username, private string $password) {
    }

    public function loginUser(): void {
        // Start session to use session variables
        session_start();

        try {
            $database = new Database('localhost', 'root', 'root', 'whatodo');
            $pdo = $database->connect();

            // Retrieve user from database
            $stmt = $pdo->prepare("SELECT * FROM users WHERE username = :username");
            $stmt->execute(['username' => $this->username]);
            $user = $stmt->fetch();

            // Check if user exists and password is correct
            if ($user && password_verify($this->password, $user['password'])) {
                // Store user data in session
                $_SESSION['user'] = $user;
                header("Location: todo.php");
                exit();
            } else {
                $_SESSION['error'] = "Nom d'utilisateur ou mot de passe incorrect.";
                header("Location: log.php");
                exit();
            }
        } catch (PDOException $e) {
            // Log error for debugging and provide a user-friendly message
            error_log($e->getMessage()); // Log error to a file or monitoring system
            $_SESSION['error'] = "Une erreur est survenue. Veuillez réessayer plus tard.";
            header("Location: log.php");
            exit();
        }
    }
}
?>


