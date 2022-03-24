<div class = "produit"> 
    
        
        <!----------------------------------->
        
        <div class ="photo" style=" flex-direction: column;">
            
        <h1 class="titre1"> Quelques photos du produit </h1>
        <div class="photo">
    <div class ="photo1">
        <div class="phototaille">
            <?php
            echo "<img src='".$produits['photo']."'></img>";
        ?>
        </div>
        <div class="phototaille">
            <?php
            echo "<img src='".$produits['photo2']."'></img>";
            ?>
        </div>
    </div>
    <div class ="photo2">
        <div class="phototaille">
                <?php
            echo "<img src='".$produits['photo3']."'></img>";
        ?>
        </div>
        <div class="phototaille">
            <?php
        echo "<img src='".$produits['photo4']."'></img>";
        ?>
        </div>
</div>
</div>
        <!-------------------------------------->
</div>
    <div class = "description">
        <h2 class="titre2"> Description du produit </h2>
        <div class ="achat">
        <p class="paragraphe"> 
        <?php
            echo "<td>".$produits['description']."</td>";
        ?>
        </a>
        </p>
        </div>
    <div class ="achat">
            <p> 
           <?php
            echo "<td>"."Le prix est de ".$produits['Prix_TTC']." euros "."</td>";
           ?>
        </p>
    </div>
    <div class ="stock">
            <p> 
           <?php
           if ($produits['Quantité_entre'] == 0){
            echo "<td>". "Le produit est actuellement en rupture de stock, veuillez revenir dans quelques jours pour passer commande";
            }
            else {
            echo "<td>"."Il y a ".$produits['Quantité_entre']." produits en stock". " dans le magasin de ".$produits['Nom_Entre']."</td>";
           }
           ?>
        </p>
    </div>
    <div class ="stock">
            <p> 
           <?php
           if ($produits['Quantité_mag'] == 0){
               echo "<td>". "Il y a actuellement aucun produit en stock en magasin, veuillez revenir ultérieurement";
            }
            else {
                echo "<td>"."Il y a ".$produits['Quantité_mag']." produits en stock". " dans le magasin de ".$produits['adress_MAG']."</td>";
           }
           ?>
        </p>
    </div>
</div>



</body>

</html>