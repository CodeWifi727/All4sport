<?php
session_start();
require_once "../Model/Bdd.php";

$bdd = new bdd();

if(isset($_POST['MDP'])){     
    $prenom = $_POST['prenom'];
    $Nom = $_POST['Nom'];
    $login = $_POST['login'];
    $MDP = $_POST['MDP'];

    $produits = $bdd->Inscription($Nom, $prenom, $login, $MDP);

    }
    
require "../View/index/inscription_view.php";
?>