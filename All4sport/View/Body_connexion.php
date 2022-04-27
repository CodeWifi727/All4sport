<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="../view/css/style.css">
  </head>
  <body>

      <form class="box" action="Connection_traitement_controller.php" method="POST">
        <h1>Connexion</h1>
        <input type="text" name="username" id="username" placeholder="username">
        <input type="text" name="password" id="password" placeholder="password">
        <input type="submit" name="connexion" value="Connnexion">
        <?php

            if (isset($_GET['erreur'])) {
              $err = $_GET['erreur'];
              if ($err==1 || $err==2)
                  echo "<p>login ou mot de passe incorrect</p>";
            }

        ?>
      </form>

      <h4>Vous n'avez toujours pas de compte !<h4>
      <p class="trucFauxBouton" type="submit" name="bouton" value="Inscrivez-vous"><a href="Inscription_controller.php">Inscrivez-vous</a></p>

  </body>
</html>