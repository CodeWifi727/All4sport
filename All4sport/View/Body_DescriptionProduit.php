<?php require_once "../Model/Bdd.php"; ?>
<div id=color1>
<div>
<div class="display_Des">
<li><?php
echo "<a  href=http://localhost/All4Sport/Controller/sport_Controller.php?CA_Libelle=$urlcat%3EFiltre</a>
        ";?>
    <ul class="dropdown">
            <li>
            <?php if ($url != "All4Sport/Controller/sport_Controller.php?CA_Libelle=$urlcat&GE_libelle=feminin") {
                if ($url != "All4Sport/Controller/sport_Controller.php?CA_Libelle=$urlcat&GE_libelle=Masculin") {
                echo "<p><em><a class=btn btn-primary href=$url&GE_libelle=Masculin>Masculin</a></em></p>"; 
            } } ?>
                </li>
            <li>
            <?php if ($url != "All4Sport/Controller/sport_Controller.php?CA_Libelle=$urlcat&GE_libelle=feminin") {
                if ($url != "All4Sport/Controller/sport_Controller.php?CA_Libelle=$urlcat&GE_libelle=Masculin") {
                    echo "<p><em><a class=btn btn-primary href=$url&GE_libelle=feminin> Feminin </a></em></p>";
                }
            } ?>
                </li>
        </ul>
    </li>


</div>
	
<!------------------------------------------------------------------------------------------------------------------------->
<?php
	foreach ($categorie as $categorie) {
		$strref = array_values($cateref)[$uwu][0];
		$strrefphoto = array_values($cateref)[$uwu][2];
		if (isset($_GET['GE_libelle'])) {
		$strref1 = array_values($cateref)[$uwu][0];
		$strrefphoto = array_values($cateref)[$uwu][3];
		}
?>
<div class="image_DescriptionProduit">

	<?php if (isset($_GET['GE_libelle']) ) {
	?>

	<div class="image_DescriptionProduit2">
		<?php
		echo "<p><em><a href=pageproduit_Controller.php?reference=$strref >"?><img id="image2_DescriptionProduit" src="<?php echo $strrefphoto ?>"><?php "</a></em></p>
		";
		?>
	</div>

<?php } else{
	echo "<p><em><a href=pageproduit_Controller.php?reference=$strref >"?><img id="image2_DescriptionProduit" src="<?php echo $strrefphoto ?>"><?php "</a></em></p>
	";
}
$uwu = $uwu + 1; 
}
?>
</div>
</div>
</div>
</body></html>