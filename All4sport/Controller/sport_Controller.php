<?php
session_start();
require_once "../Model/Bdd.php";

// appel lle model en envoyant la valeur de cat

$bdd = new bdd();

$produits = $bdd->getAllArticlesBygenre($_GET['CA_Libelle']);
if (isset($_GET['GE_libelle'])) {
    $produits2 = $bdd->getAllArticlesBygenre1($_GET['GE_libelle']);

}

$url = $_SERVER['REQUEST_URI']; 
$bdd = new Bdd();
if (isset($_GET['CA_Libelle'])) {
	$urlcat = $_GET['CA_Libelle'];
}

$cateLibelle = $_GET['CA_Libelle'];
	if (isset($_GET['GE_libelle'])) {
		$filtrelibelle = $_GET['GE_libelle'];
		$categorie = $bdd->getProduitByFiltre($cateLibelle, $filtrelibelle);
		$cateref = $bdd->getProduitByFiltre($cateLibelle, $filtrelibelle);
		//$strcat = array_values($categorie)[0][1];
	}else{
		$categorie = $bdd->getProduitByCategory($cateLibelle);
		$cateref = $bdd->getProduitByCategory($cateLibelle);
	}
	//$strcat = array_values($categorie)[0][1];
	$uwu = 0;

include "../View/index/DescriptionProduit_view.php";