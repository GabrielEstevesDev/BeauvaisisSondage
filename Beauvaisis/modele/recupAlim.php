<?php
function recupAlim(){
	require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
	$sql="SELECT * FROM `aliments`";
	try {
		$commande = $pdo->prepare($sql);
		$bool = $commande->execute();
		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
		}
	}
	catch (PDOException $e) {
		echo "Echec de select";
		die(); // On arrête tout.
	}
	return $resultat;
	
}
		
	
?>