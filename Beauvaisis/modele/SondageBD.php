<?php
	function MrecupCategories(){
		require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
			$sql="SELECT Aliment1,Aliment2,Aliment3,Aliment4,Aliment5,Aliment6,Aliment7,Aliment8,Aliment9,Aliment10 FROM `sondage`";
			try {
				$commande = $pdo->prepare($sql);
				$bool = $commande->execute();
				if ($bool) {
					$identifiants = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

				}
			}
			catch (PDOException $e) {
				echo "Echec de select";
				die(); // On arrête tout.
			}

			$res = array();

			for ($i=1; $i < 12; $i++) { 
				$res[$i] = 0;
			}

			for($i = 0; $i < count($identifiants); $i++)
				foreach ($identifiants[$i] as $val) {
					$sql="SELECT alim_grp_code FROM aliments WHERE alim_code=:alim_code";
					try {
						$commande = $pdo->prepare($sql);
						$commande->bindParam(':alim_code', $val);
						$bool = $commande->execute();
						if ($bool) {
							$categories = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
						}
					}
					catch (PDOException $e) {
						echo "Echec de select";
						die(); // On arrête tout.
					}

					$res[$categories[0]["alim_grp_code"]] = $res[$categories[0]["alim_grp_code"]]+1;
					
				}
			echo(json_encode($res));
	}

	function MrecupSondage(){
		$id = $_SESSION['id'];

		require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
		$sql="SELECT Aliment1,Aliment2,Aliment3,Aliment4,Aliment5,Aliment6,Aliment7,Aliment8,Aliment9,Aliment10 FROM `sondage` WHERE Administre=:id";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':id', $id);
			$bool = $commande->execute();
			if ($bool) {
				$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

			}
		}
		catch (PDOException $e) {
			echo "Echec de select";
			die(); // On arrête tout.
		}

		//var_dump($resultat);

		$res = array();
		foreach ($resultat[0] as $val) {
			$sql="SELECT getPreference(:alim_code)";
			try {
				$commande = $pdo->prepare($sql);
				$commande->bindParam(':alim_code', $val);
				$bool = $commande->execute();
				if ($bool) {
					$preferences = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
				}
			}
			catch (PDOException $e) {
				echo "Echec de select";
				die(); // On arrête tout.
			}
			//var_dump($preferences[0]);
			array_push($res, $preferences[0]["getPreference('" . $val . "')"]);
			//var_dump($preferences[0]["getPreference('" . $val . "')"]);
		}

		$values = array_count_values($res);
		echo(json_encode($values));
	}

	function MrecupScores(){
		$id = $_SESSION['id'];

	require('./modele/connectSQL.php');
		$sql="SELECT NutriScore,ScoreSante FROM `sondage` WHERE Administre=:id";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':id', $id);
			$bool = $commande->execute();
			if ($bool) {
				$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

			}
		}
		catch (PDOException $e) {
			echo "Echec de select";
			die(); // On arrête tout.
		}

		//var_dump($resultat);

		$res = array();
		$res["nutriscore"] = $resultat[0]["NutriScore"];
		$res["scoresante"] = $resultat[0]["ScoreSante"];

		echo(json_encode($res));
	}

	function MrecupChoix(){
		$id = $_SESSION["id"];

	require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
	$sql="SELECT Aliment1,Aliment2,Aliment3,Aliment4,Aliment5,Aliment6,Aliment7,Aliment8,Aliment9,Aliment10 FROM `sondage` WHERE Administre=:id";
	try {
		$commande = $pdo->prepare($sql);
		$commande->bindParam(':id', $id);
		$bool = $commande->execute();
		if ($bool) {
			$choix = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
		}
	}
	catch (PDOException $e) {
		echo "Echec de select";
		die(); // On arrête tout.
	}

	$resultat = array();

	foreach ($choix[0] as $val) {
		require('./modele/connectSQL.php'); //$pdo est défini dans ce fichier
		$sql="SELECT alim_nom_fr FROM `aliments` WHERE alim_code=:id";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':id', $val);
			$bool = $commande->execute();
			if ($bool) {
				$alim = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
			}
		}
		catch (PDOException $e) {
			echo "Echec de select";
			die();
		}

		array_push($resultat,$alim[0]);
	}

	echo(json_encode($resultat,JSON_UNESCAPED_UNICODE));
	}	
	
?>