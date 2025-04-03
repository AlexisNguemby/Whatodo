<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<h1>Bienvenue sur What To Do</h1>
<img class="icontodo" src="images/icontodo.png" alt="Icon to do">
<nav>
    <ul>
        <li><a href="register.php"><img src="images/icon.png" alt="Register Icon"></a></li>
    </ul>
</nav>

<!-- Formulaire pour créer une nouvelle tâche -->
<form action="process_tasks.php" method="post">
    <h3>Créer une nouvelle tâche :😊</h3>
    <label for="task"></label>
    <textarea id="task" name="task" required></textarea>
    <button type="submit">Créer</button>
</form>

<!-- Formulaire pour valider les tâches -->
<form action="todo.php" method="post">
    <div class="container">
        <div class="task">
            <h3>Taches en cours</h3>
            <?php include 'process_tasks.php'; ?>
            <?php foreach ($tasks as $task): ?>
                <?php if ($task['status'] === 'pending'): ?>
                    <div>
                        <input type="checkbox" name="tasks[]" value="<?= htmlspecialchars($task['id']) ?>">
                        <label><?= htmlspecialchars($task['description']) ?></label>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
            <button type="submit" name="validate">Valider</button>
        </div>
    </div>
</form>

<!-- Section pour afficher les tâches terminées -->
<form action="process_tasks.php" method="post">
    <div class="task completed">
        <h3>Taches terminées</h3>
        <?php foreach ($tasks as $task): ?>
            <?php if ($task['status'] === 'completed'): ?>
                <div>
                    <!-- Case à cocher pour chaque tâche terminée -->
                    <input type="checkbox" name="completed_tasks[]" value="<?= htmlspecialchars($task['id']) ?>">
                    <label><?= htmlspecialchars($task['description']) ?></label>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
        <!-- Bouton pour supprimer les tâches sélectionnées -->
        <button type="submit" name="delete_completed" onclick="return confirm('Êtes-vous sûr de vouloir supprimer les tâches sélectionnées ?');">Supprimer</button>
    </div>
</form>

</body>
</html>
