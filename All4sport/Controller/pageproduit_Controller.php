<?php
session_start();
require_once "../Model/Bdd.php";

$bdd = new bdd();

 if (isset($_GET ['reference'])){

    $bdd = new bdd();
    $produits = $bdd->getProduitByReference($_GET['reference']);

    }
    
require "../View/index/pageproduit_View.php";
?>