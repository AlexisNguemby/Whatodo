<?php
require_once 'Database.php';

class Task {
    private PDO $pdo;

    public function __construct(private int $user_id, private string $description) {
        $database = new Database('localhost', 'root', 'root', 'whatodo');
        $this->pdo = $database->connect();
    }

    public function addTask(): void {
        try {
            $stmt = $this->pdo->prepare("INSERT INTO tasks (user_id, description) VALUES (:user_id, :description)");
            $stmt->execute([
                'user_id' => $this->user_id,
                'description' => $this->description
            ]);
        } catch (PDOException $e) {
            die("Erreur : " . $e->getMessage());
        }
    }

    // Nouvelle méthode pour marquer une tâche comme terminée
    public function markAsCompleted(int $task_id): void {
        try {
            $stmt = $this->pdo->prepare("UPDATE tasks SET status = 'completed' WHERE id = :task_id");
            $stmt->execute(['task_id' => $task_id]);
        } catch (PDOException $e) {
            die("Erreur : " . $e->getMessage());
        }
    }

    // Nouvelle méthode pour supprimer une tâche
    public function deleteTask(int $task_id): void {
        try {
            // Supprimer la tâche avec l'ID correspondant et l'ID utilisateur pour s'assurer que c'est bien l'utilisateur qui supprime
            $stmt = $this->pdo->prepare("DELETE FROM tasks WHERE id = :task_id AND user_id = :user_id");
            $stmt->execute([
                'task_id' => $task_id,
                'user_id' => $this->user_id
            ]);
        } catch (PDOException $e) {
            die("Erreur : " . $e->getMessage());
        }
    }
}
?>
