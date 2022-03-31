<?php
Class Bdd {

    private $Bdd ;

    function __construct(){
        try{
        $this->bdd = new PDO("mysql:dbname=all4sport;host=127.0.0.1", "root","Simon59300sql");
        } catch(PDOException $e){
        }
    }

    function getBdd(){
        return $this->bdd;
    }
        
        function getAllArticlesBygenre(){
            $sql= "SELECT GE_libelle AS 'genre'
                     FROM all4sport.genre
                     Where GE_libelle='Masculin' or GE_libelle='feminin'";
           $sth = $this->bdd->query($sql);
            return $sth->fetchAll();
         }

         function getAllArticlesBygenre1(){
            $sql1= "SELECT GE_libelle AS 'genre'
                     FROM all4sport.genre
                     Where GE_libelle='Masculin' or GE_libelle='feminin'";
           $sth1 = $this->bdd->query($sql1);
            return $sth1->fetchAll();
         }

         function getProduitByReference($reference){
            $sql = "SELECT p.reference, Nom_produit, description, Prix_TTC,Nom_Entre, adress_MAG, photo, photo2, photo3, photo4, Quantité_entre, Quantité_mag
            From produit p
            inner join possede on reference = possede.FK_reference
            inner join entrepot on possede.fk_entre = entrepot.ID_Entre
            inner join stock on reference = stock.FK_reference
            inner join magasin on FK_MAG = MAG_ID
            where p.reference = :reference";
            $sth = $this->bdd->prepare($sql);
            $r = $sth->execute(array(':reference' => $reference));
            return $sth->fetch();

        }

        function getProduitByCategory($cateLibelle){
            $sql = "SELECT reference ,CA_Libelle, photo, photo2, photo3, photo4 from produit
            inner join all4sport.categorie on CA_ID = FK_CA
            where CA_Libelle = :CA_Libelle";

            $sth = $this->bdd->prepare($sql);
            $sth->execute(array(':CA_Libelle'=> $cateLibelle));
            return $sth->fetchAll();
    
        }


        function getProduitByFiltre($cateLibelle, $filtrelibelle){
            $sql = "SELECT reference ,CA_Libelle ,GE_libelle, photo, photo2, photo3, photo4 from produit
            inner join all4sport.categorie on CA_ID = FK_CA
            inner join all4sport.appartient on Fk_reference = reference
            inner join all4sport.genre on GE_ID = FK_GE
            where CA_Libelle = :CA_Libelle and GE_libelle = :GE_libelle";

            $sth = $this->bdd->prepare($sql);
            $sth->execute(array(':CA_Libelle'=> $cateLibelle ,':GE_libelle'=> $filtrelibelle));
            return $sth->fetchAll();
    
        }

        function Connection($login, $MDP){
            $sql = "SELECT login, MDP FROM users WHERE login ='".$login."'AND MDP='".$MDP."'";        
            $req = $this->bdd->prepare($sql);
            $req->execute(array(":login" => $login,":MDP"=> $MDP));
        }

        function Inscription($Nom, $prenom, $login, $MDP){
            $sql = "INSERT INTO utilisateur (Nom, prenom, MDP, login) VALUES (:Nom, :prenom, :login, :$MDP)";        
            $req = $this->bdd->prepare($sql);
            $req->execute(array(":Nom" => $Nom,
                                ":prenom"=> $prenom,
                                ":login"=>$login,
                                ":MDP"=>$MDP));
        }

}