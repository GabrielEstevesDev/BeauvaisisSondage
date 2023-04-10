<?php
    function envoyerSondage ($tabAlim){
        require("./modele/utilisateurBD.php");
        $id = isset($_SESSION['id'])?($_SESSION['id']):NULL;
        $aSaisit = existSondage($id);
        var_dump($aSaisit);
        if ($aSaisit==false){
            insertSondage($tabAlim);
            replaceTrigger();

        } 
        else {
            updateSondage($tabAlim);
            replaceTrigger();
         }
    }
    function insertSondage($tabAlim){
        $id = isset($_SESSION['id'])?($_SESSION['id']):NULL;
        $nom = isset($_SESSION['login'])?($_SESSION['login']):NULL;
        require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
        $sql="INSERT INTO `sondage` (`Administre`, `Nom`, `Aliment1`, `Aliment2`, `Aliment3`, `Aliment4`,  `Aliment5`, `Aliment6`, `Aliment7`, `Aliment8`, `Aliment9`, `Aliment10`) VALUES
            (:id, :nom, :aliment1,:aliment2,:aliment3,:aliment4,:aliment5,:aliment6,:aliment7,:aliment8,:aliment9,:aliment10); ";
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':id', $id);
            $commande->bindParam(':nom', $nom);
            $commande->bindParam(':aliment1', $tabAlim[0]["code"]);
            $commande->bindParam(':aliment2', $tabAlim[1]["code"]);
            $commande->bindParam(':aliment3', $tabAlim[2]["code"]);
            $commande->bindParam(':aliment4', $tabAlim[3]["code"]);
            $commande->bindParam(':aliment5', $tabAlim[4]["code"]);
            $commande->bindParam(':aliment6', $tabAlim[5]["code"]);
            $commande->bindParam(':aliment7', $tabAlim[6]["code"]);
            $commande->bindParam(':aliment8', $tabAlim[7]["code"]);
            $commande->bindParam(':aliment9', $tabAlim[8]["code"]);
            $commande->bindParam(':aliment10', $tabAlim[9]["code"]);
			$bool = $commande->execute();
           
		}
		catch (PDOException $e) {
			echo "erreur insert";
			die(); // On arrête tout.
		}
        if ($bool) {
            $resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
            
        }
        
    }

    function replaceTrigger(){
        require("./modele/connectSQL.php");
        $sql="CALL NutriScoreMoyen(:idA)";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':idA', $_SESSION['id']);
			$bool = $commande->execute();
		
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de l'appel de la procédure : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
    }

    function updateSondage($tabAlim){
        $id = isset($_SESSION['id'])?($_SESSION['id']):NULL;
        require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
      
        $sql="UPDATE sondage
        SET Aliment1 =:aliment1, Aliment2 =:aliment2,Aliment3 =:aliment3,Aliment4 =:aliment4,Aliment5 =:aliment5,Aliment6 =:aliment6,Aliment7 =:aliment7,Aliment8 =:aliment8,Aliment9 =:aliment9,Aliment10 =:aliment10 WHERE Administre=:id";
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':id', $id);
            $commande->bindParam(':aliment1', $tabAlim[0]["code"]);
            $commande->bindParam(':aliment2', $tabAlim[1]["code"]);
            $commande->bindParam(':aliment3', $tabAlim[2]["code"]);
            $commande->bindParam(':aliment4', $tabAlim[3]["code"]);
            $commande->bindParam(':aliment5', $tabAlim[4]["code"]);
            $commande->bindParam(':aliment6', $tabAlim[5]["code"]);
            $commande->bindParam(':aliment7', $tabAlim[6]["code"]);
            $commande->bindParam(':aliment8', $tabAlim[7]["code"]);
            $commande->bindParam(':aliment9', $tabAlim[8]["code"]);
            $commande->bindParam(':aliment10', $tabAlim[9]["code"]);
			$bool = $commande->execute();
           
		}
		catch (PDOException $e) {
            echo($e);
			echo "erreur d'update";
			die(); // On arrête tout.
		}
        if ($bool) {
            $resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
            echo("fin update avant redirection");
        }
        
    }
?>