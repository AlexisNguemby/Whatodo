<?php
session_start();
require_once 'classes/login.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $login = new Login($username, $password);
    $login->loginUser();
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
</head>
<body>
    <?php
    if (isset($_SESSION['error'])) {
        echo '<p style="color:red;">' . $_SESSION['error'] . '</p>';
        unset($_SESSION['error']);
    }
    ?>
    <form action="log.php" method="post">
        <label for="username">Nom d'utilisateur :</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password" required>
        <br>
        <button type="submit">Se connecter</button>
    </form>
</body>
</html>