<?php
session_start();
require_once 'classes/task.php';
require_once 'classes/displaytask.php'; 

// Vérifie si l'utilisateur est connecté
if (!isset($_SESSION['user'])) {
    header("Location: log.php");
    exit();
}

$user_id = $_SESSION['user']['id'];

// Si le formulaire est soumis pour ajouter une tâche
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['task'])) {
    $description = $_POST['task'];
    $task = new Task($user_id, $description);
    $task->addTask();
    header("Location: todo.php");
    exit();
}

// Si le formulaire est soumis pour marquer les tâches comme terminées
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['tasks'])) {
    foreach ($_POST['tasks'] as $task_id) {
        $task_id = intval($task_id);
        $task = new Task($user_id, ''); // Pas besoin de description ici
        $task->markAsCompleted($task_id);
    }
    header("Location: todo.php"); // Rediriger après la mise à jour
    exit();
}

// Si le formulaire est soumis pour supprimer les tâches terminées
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['delete_completed'])) {
    if (isset($_POST['completed_tasks']) && !empty($_POST['completed_tasks'])) {
        foreach ($_POST['completed_tasks'] as $task_id) {
            $task_id = intval($task_id);
            $task = new Task($user_id, ''); // Pas besoin de description ici
            $task->deleteTask($task_id); // Supprimer la tâche
        }
        header("Location: todo.php"); // Rediriger après suppression
        exit();
    } else {
        echo "Aucune tâche sélectionnée pour la suppression.";
    }
}

$displayTask = new DisplayTask($user_id, '');
$tasks = $displayTask->getTasks();
?>
