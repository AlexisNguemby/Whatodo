<?php
require_once 'classes/Database.php';

class DisplayTask {
    private PDO $pdo;

    public function __construct(private int $user_id, private string $description) {
        $database = new Database('localhost', 'root', 'root', 'whatodo');
        $this->pdo = $database->connect();
    }

    public function getTasks(): array {
        $tasks = [];
        try {
            $stmt = $this->pdo->prepare("SELECT * FROM tasks WHERE user_id = :user_id");
            $stmt->execute(['user_id' => $this->user_id]);

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $tasks[] = $row;
            }
        } catch (PDOException $e) {
            die("Erreur : " . $e->getMessage());
        }
        return $tasks;
    }
}
?>
