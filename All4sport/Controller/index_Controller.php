<?php
session_start();
require_once "../Model/Bdd.php";
//Appel au model pour recup les données
$bdd = new Bdd();

//$exemple = $bdd-> getAllArticles();
//$exemple = "lucas";

// Appel la vue

try{
    $bdd = new PDO("mysql:dbname=all4sport;host=127.0.0.1", "root","2010thibaut");
    } catch(PDOException $e){
    }

require "../View/index/Acceuil_view.php";