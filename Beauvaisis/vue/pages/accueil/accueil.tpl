<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LA COMMUNAUTÉ D'AGGLOMÉRATION DU BEAUVAISIS - ACCUEIL</title>
    <link rel="stylesheet" href="./vue/pages/accueil/assets/styles/index.css">
    <script src="./vue/navbar/navbar.js"></script>
</head>

<body>
    <header>
        <img src="./vue/pages/accueil/assets/img/logo beauvaisis.png" alt="" class="logo-beauvaisis">
        <h1><i class="fa-solid fa-quote-left"></i> Ensemble, sur la route de votre avenir <i
                class="fa-solid fa-quote-right"></i></h1>
    </header>
    <?php  require("./vue/navbar/navbar.tpl"); ?>
    <section id="page">
        <main>
            <div class="container">
                <h1>LA COMMUNAUTÉ D'AGGLOMÉRATION
                    DU BEAUVAISIS</h1>
                <div class="imgContainer">
                    <img id="map" src="./vue/pages/accueil/assets/img/capture.png"
                        alt="zone zone geographique de Beauvaisis">
                </div>
                <p>La communauté d'agglomération du Beauvaisis est une communauté d'agglomération
                    française, située dans le département de l'Oise et la région Hauts-de-France. Cette
                    communauté, créée, en 2003, recense actuellement plus de 53 communes.
                </p>
            </div>
            <nav class="navBeauvais">
                <img src="./vue/pages/accueil/assets/img/logo beauvais.png" alt="" class="logoBeauvais">
                <p>à lire sur beauvais</p>
                <ul>
                    <li><a href="http://www.beauvais.fr/economie-emploi/offres-d-emploi-de-la-mairie.html"
                            target="_blank">LES OFFRES
                            D'EMPLOIS</a></li>
                    <li><a href="http://www.beauvais.fr/actualites/2932-rencontres-associatives-samedi-10-septembre-2022.html"
                            target="_blank">RENCONTRES ASSOCIATIVES <br>
                            SAMEDI 10 SEPTEMBRE 2022</a></li>
                    <li><a href="http://www.beauvais.fr/actualites/2935-quartier-episcopal-le-coeur-de-ville-de-beauvais-entre-en-travaux.html"
                            target="_blank">QUARTIER
                            EPISCOPAL</a></li>
                    <li><a href="http://www.beauvais.fr/actualites/2957-beauvais-baisse-la-lumiere.html"
                            target="_blank">BEAUVAIS BAISSE LA LUMIERE</a></li>
                </ul>
            </nav>
        </main>
        <section class="actualite">
            <div class="container">
                <h1 class="title">L'ACTUALITÉ EN BREF</h1>
                <div class="father">
                    <div class="left-part">
                        <h3 class="sub-title">
                            INSCRIPTIONS AUX TRANSPORTS <br> SCOLAIRES POUR 2022/2023
                        </h3>
                        <p class="date">22 juin, 2022</p>
                        <div class="imgContainer">
                            <img src="./vue/pages/accueil/assets/img/transports scolaires.png" alt="">
                        </div>
                        <p class="p1">Si votre enfant est domicilié dans l’Agglomération
                            du Beauvaisis et fréquente un établissement
                            scolaire public du territoire, depuis la maternelle
                            jusqu’à la terminale, vous devez procéder à son
                            inscription...
                        </p>
                        <p class="readMore"><a href="../leo/Actualites.html#transport">LIRE LA SUITE</a></p>
                    </div>
                    <div class="right-part">
                        <h3 class="sub-title">
                            L'ASSOCIATION ENVOL A <br> INAUGURÉ
                            SON CENTRE DE SOINS
                        </h3>
                        <p class="date">13 juillet, 2022</p>
                        <div class="imgContainer">
                            <img src="./vue/pages/accueil/assets/img/association envol.png" alt="">
                        </div>
                        <p class="p1">Le nouveau centre de soins ENVOL – pour Envol
                            Nocturne et Vie des Oiseaux Libres – a été inauguré
                            le 27 mai dernier. L’association, désormais installée
                            route de Villers-St-Sépulcre à Bailleul-sur-Thérain....
                        </p>
                        <p class="readMore"><a href="../leo/Actualites.html#envol">LIRE LA SUITE</a> </p>
                    </div>
                </div>
        </section>
        </div>
        <section class="importantDates">
            <div class="container">
                <h1 class="title">DES DATES IMPORTANTES</h1>
                <div>
                    <div class="father">
                        <div class="left-part">
                            <h3 class="sub-title">
                                DÉFI INTER-ENTREPRISES <br> DU BEAUVAIS
                            </h3>
                            <div class="imgContainer">
                                <img src="./vue/pages/accueil/assets/img/défi inter-entreprises.png" alt="">
                            </div>
                            <p class="p1">Un peu de sport, des costumes délirants, une
                                bonne dose de rire et de bonne humeur, de la
                                cohésion d’équipe… Voici les ingrédients
                                principaux qui font le succès du défi interentreprises, proposé par la Communauté...
                            </p>
                            <a href="http://www.beauvais.fr/actualites/prochainement-a-beauvais/2934-les-entreprises-du-beauvaisis-relevent-le-defi.html"
                                target="_blank"><button class="btn">en savoir plus</button></a>
                        </div>
                        <div class="right-part">
                            <h3 class="sub-title">
                                FERMETURE TEMPORAIRE <br> DE L'AQUASPACE
                            </h3>
                            <div class="imgContainer">
                                <img src="./vue/pages/accueil/assets/img/aquaspace.jpg" alt="">
                            </div>
                            <p class="p1">L’Aquaspace ferme ses portes pour sa vidange
                                semestrielle réglementaire du lundi 29 août
                                jusqu’au dimanche 11 septembre inclus. Les
                                activités et horaires habituels reprendront le
                                lundi 12 septembre.
                            </p>
                            <a href="http://www.aquaspace.fr/" target="_blank"><button class="btn">en savoir
                                    plus</button></a>
                        </div>
                    </div>
                </div>
        </section>
        </div>
        <footer>
            <h1 class="title">nous contacter</h1>
            <form action="#">
                <label for="firstname">prénom</label>
                <input type="text" id="firstname" placeholder="Jean">
                <label for="name">nom</label>
                <input type="text" id="name" placeholder="Dupont">
                <label for="email">email</label>
                <input type="text" id="name" placeholder="exemple@gmail.com">
                <label for="message">message</label>
                <textarea name="message" id="message" cols="30" rows="10"
                    placeholder="écrivez votre message ici"></textarea>
                <button class="btn" type="submit">envoyer</button>
            </form>
        </footer>
    </section>
    <script src="./vue/pages/accueil/assets/js/srcipt.js"></script>
</body>

</html>