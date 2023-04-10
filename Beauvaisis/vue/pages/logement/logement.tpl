<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./vue/pages/logement/assets/css/styles_index.css">
	<link href='https://fonts.googleapis.com/css?family=Inter' rel='stylesheet'>
	<title>Beauvaisis - Logement & études</title>
	<script type="text/javascript" src="./vue/pages/logement/assets/js/logement_etu.js" defer></script>

</head>

<body>
	<header>
		<?php  require("./vue/navbar/navbar.tpl"); ?>
	</header>
	<div class="page">
		<div class="education">
			<p class="titre_edu">L'EDUCATION DANS</br>NOTRE AGGLOMERATION</p>

			<div class="divCreches">
				<p class="sous_titre_creche">Crèches rurales</p>
				<img id="myImg" class="myImg" src="./vue/pages/logement/assets/src/creches.jpg" alt="Carte des crèches"
					onclick="clickimg();">
				<div id="zoomImg" class="zoomImg">Cliquer sur l'image pour l'aggrandir</div>

				<div id="myModal" class="modal">
					<span class="close" onclick="spanclick();">&times;</span>
					<img class="modal-content" id="img01">
					<div id="caption"></div>
				</div>
			</div>

			<div class="div_maternelle">
				<p class="sous_titre_maternelle" class="txt_mat">Coordonnées du Relais</br>d'assistances maternelle</p>
				<p class="coos_maternelle" class="txt_mat">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget
					malesuada. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus.
					Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci
					porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
				</p>
			</div>
		</div>

		<div class="divider div-transparent"></div>

		<div class="logement">
			<div class="div_tloge">
				<p class="titre_loge">DIFFERENTES AIDES</br>POUR VOTRE LOGEMENT</p>
			</div>

			<img class="img_logement" src="./vue/pages/logement/assets/src/hlm_logements.png">

			<div class="div_plan_renov">
				<p class="ST_plan_renov">
					Plan rénovation confort
				</p>
				<div class="div_txt_plan_renov">
					<p class="txt_dispositif">
						Vous êtes propriétaire occupant ou bailleur de votre logement et vous projetez de réaliser des
						travaux pour améliorer son confort ?
					</p>
					<p class="txt_dispositif">
						Le dispositif « Bien chez soi », permet de mettre en œuvre des actions spécifiques de soutien à
						l’amélioration du cadre bâti.
					</p>
					<p class="txt_conditions">
						Vous pouvez sous conditions bénéficier d’une subvention pour vous aider à mener à bien votre
						projet !
					</p>
					<div class="tooltip">
						(passer votre souris ici pour voir les conditions)
						<span class="tooltiptext">
							<ul>
								Je dois engager des travaux d’isolation ou de chauffage pour que mon logement soit mieux
								chauffé, et que je puisse ainsi faire baisser ma facture énergétique
							</ul>
							<ul>
								Je dois faire remplacer ma baignoire par une douche ou faire faire d’autres travaux de
								sanitaires dans ma salle de bains pour la rendre plus accessible
							</ul>
							<ul>
								Souffrant d’un handicap, je dois faire faire des aménagements qui faciliteraient ma
								mobilité et mes déplacements dans mon logement (monte-escalier, barre d’appui, travaux
								d’élargissement de porte pour permettre le passage d’un fauteuil roulant …)
							</ul>
							<ul>
								Mon habitation visible de la rue nécessite que soient engagés des travaux de ravalement
								de façades
							</ul>
							<ul>
								Le confort de mon logement doit être amélioré et / ou je dois faire effectuer des
								travaux de mise aux normes, sur les postes de travaux suivants : couverture – zinguerie,
								mise aux normes d’électricité, sanitaires (si vétustes), sols et plafonds (si très
								abîmés),
								aménagement de combles ou extension pour besoin d’agrandissement suivant les besoins
								réels de ma famille (surface utile uniquement), création d’un système d’assainissement
								autonome
							</ul>
						</span>
					</div>
				</div>
			</div>

			<div class="div_prgmLH">
				<div class="div_titre_PLH">
					<p class="titre_PLH">Programme Local de l'Habitat</p>
				</div>
				<div class="div_text_PLH">
					<p>
						Le Programme Local de l'Habitat (PLH) est un document d'orientation et de programmation qui a
						pour vocation la définition et la conduite d'une politique communautaire en matière d'habitat,
						coordonnée avec la planification urbaine et les politiques foncières
					</p>
					<p>
						Son objectif principal est d'apporter une réponse aux besoins en logements de tous les ménages
						en fonction de leurs souhaits et de leurs capacités financières, tout en veillant à assurer
						entre les quartiers et les communes une répartition équilibrée et diversifiée de l'offre de
						logements.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>