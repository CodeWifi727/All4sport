<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="../view/css/style.css">
  </head>
  <body>

      <form class="box" action="traiter.php" method="post">
        <h1>Connexion</h1>
        <input type="text" name="username" id="username" placeholder="username">
        <input type="text" name="password" id="password" placeholder="password">
        <input type="submit" name="connexion" value="Connnexion">
        <h4>Vous n'avez toujours pas de compte !<h4>
      </form>

      <p class="trucFauxBouton" type="submit" name="bouton" value="Inscrivez-vous"><a href="Inscription_controller.php">Inscrivez-vous</a></p>

  </body>
</html>