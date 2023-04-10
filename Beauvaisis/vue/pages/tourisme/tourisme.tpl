<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./vue/pages/tourisme/assets/Css/Tourisme.css">
    <title>Tourisme et Culture</title>
    <script src="./vue/pages/tourisme/assets/js/srcipt.js"></script>
</head>

<body>
    <header></header>
    <?php  require("./vue/navbar/navbar.tpl"); ?>
    <section class="main">
        <h1 class="Titre">Tourisme et Culture</h1>
        <p id="début"><i class="fa-solid fa-quote-left"></i> Vous trouverez ici toutes les informations concernant la
            culture et le tourimse du Beauvaisis. <i class="fa-solid fa-quote-right"></i></p>
        <div class="Children">
            <div class="IMG">
                <img src="./vue/pages/tourisme/assets/img/office.jpg" alt="office" class="img">
            </div>
            <h2 class="TitreSecond">OFFICE DE TOURISME</h2>
            <h3 class="SousTitre">Horaires d'ouverture :</h3>
            <p>D'octobre à avril : Le lundi de 14h à 18h et du mardi au samedi de
                09h30 à 12h30 et de 13h30 à 18h.<br>
                D'avril à octobre : Le lundi de 14h à 18h,
                du mardi au samedi de 09h30 à 12h30 et de 13h30 à
                18h et les dimanches et jours fériés de 10h à 13h
                et de 14h à 17h30.</p>
            <h3 class="SousTitre">Coordonnées :</h3>
            <p>Adresse : 1, rue Beauregard
                60000 Beauvais Cedex Tél : 03 44 15 30 30
                Fax : 03 44 15 30 31</p>
            <a href="https://www.visitbeauvais.fr/fr/">
                <button class="btn" id="BtnCentre">EN SAVOIR PLUS</button>
            </a>
        </div>
    </section>
    <section>
        <h1 class="Titre">Les lieux important</h1>
        <div class="Papa">
            <div class="Children" id="left-part">
                <h2 class="TitreSecond">Aéroport Paris-Beauvais</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/avion.jpg" alt="avion" class="img">
                </div>
                <p>L'Aéroport de Paris-Beauvais est le 10ème aéroport
                    français. De taille humaine, l'aéroport a accueilli
                    près de 4 millions de passagers en 2016. Plus de 60
                    destinations sont aujourd'hui desservies grâce à 5
                    compagnies aériennes.</p>
                <a href="https://www.aeroportparisbeauvais.com/passagers/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>

            <div class="Children" id="right-part">
                <h2 class="TitreSecond">VisitBeauvais</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/visitbeauvais.jpg" alt="Visit" class="img">
                </div>
                <p>VisitBeauvais- Office de tourisme de l’Agglomération
                    de Beauvais. 60 Visit pour tous a deux, en famille,
                    entre amis Nos idées week-ends Toutes nos idées. A
                    partir de 100 € séjour romantique et gourmand.</p>
                <a href="https://www.visitbeauvais.fr/fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>
        </div>
    </section>
    <section class="fin">
        <h1 class="Titre">Sites touristiques majeurs</h1>
        <div class="Papa">
            <div class="Children" id="left-part">
                <h2 class="TitreSecond">La maladrerie Saint Lazare</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/maladrerie.jpg" alt="maladrerie" class="img">
                </div>
                <p>La maladrerie Saint-Lazare est un site remarquable des 12ème et 13ème siècles, typique
                    de l'architecture hospitalière du Moyen-Age.</p>
                <a href="https://maladrerie.fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>

            <div class="Children" id="right-part">
                <h2 class="TitreSecond"> la Cathédrale Saint Pierre</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/cathédrale.jpg" alt="cathédrale" class="img">
                </div>
                <p>Parcourez 2000
                    ans d'histoire beauvaisienne depuis le rempart
                    gallo-romain jusqu'au Quadrilatère en passant
                    bien évidemment par la Cathédrale Saint-Pierre.</p>
                <a href="http://www.cathedrale-beauvais.fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>
        </div>
    </section>
    <section>
        <div class="Papa" id="secteur">
            <div class="Children" id="left-part">
                <h2 class="TitreSecond">Château de Troissereux</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/chateau.jpg" alt="chateau" class="img">
                </div>
                <p>Ce château Renaissance en brique et pierre conserve
                    plusieurs éléments du Moyen-âge. Les décors
                    intérieurs ont été refaits en 1791 dans le goût néoclassique.</p>
                <a href="http://www.chateau-troissereux.com/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>

            <div class="Children" id="right-part">
                <h2 class="TitreSecond">Plan d'Eau du Canada</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/canada.jpg" alt="canada" class="img">
                </div>
                <p>Havre de paix et de verdure, le site ouvert toute
                    l’année, est the place to be pour les pratiquants
                    de sports en plein air et de loisirs !</p>
                <a href="http://www.plandeaucanada.fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>
        </div>
    </section>
    <section class="fin">
        <h1 class="Titre">Culture, loisirs et famille</h1>
        <div class="Papa">
            <div class="Children" id="left-part">
                <h2 class="TitreSecond">Ecole d'art du beauvaisis</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/école.jpg" alt="école" class="img">
                </div>
                <p>L’École d’Art du Beauvaisis est agréée organisme
                    de formation professionnelle. À ce titre, des
                    demandeurs d’emploi, des enseignants en Congé
                    Individuel de Formation ou des salariés peuvent
                    s’intégrer dans les formations existantes de
                    l’École d’Art du Beauvaisis.</p>
                <a href="https://ecole-art-du-beauvaisis.com/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>

            <div class="Children" id="right-part">
                <h2 class="TitreSecond">CONSERVATOIRE EUSTACHE DU CAURROY</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/conservatoire.jpg" alt="conservatoire" class="img">
                </div>
                <p>Dès leur plus âge, les enfants peuvent s’initier à la musique,
                    à l’expression corporelle et aux arts plastiques (dans le
                    cadre d’un partenariat avec l’Ecole d’Art du Beauvaisis)
                    grâce aux ateliers « découvertes ».</p>
                <a href="https://conservatoire.beauvaisis.fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>
        </div>
    </section>
    <section class="fin">
        <div class="Papa">
            <div class="Children" id="left-part">
                <h2 class="TitreSecond">MÉDIATHÈQUES</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/médiathèques.jpg" alt="médiathèques" class="img">
                </div>
                <p>Les cinq médiathèques sont ouvertes à tous et mettent
                    à votre disposition plus de 300 000 ouvrages : Livres,
                    Disques-Compacts, Revues, Livres Audios, CD-Roms, DVD.
                    Tous ces documents sont disponibles en consultation
                    sur place et la plus grande partie en prêt à domicile.</p>
                <a href="https://mediatheques.beauvaisis.fr/in/faces/homeInBook.xhtml">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>

            <div class="Children" id="right-part">
                <h2 class="TitreSecond">AQUASPACE</h2>
                <div class="IMG">
                    <img src="./vue/pages/tourisme/assets/img/aquaspace.jpg" alt="aquaspace" class="img">
                </div>
                <p>L’Aquaspace est bien plus qu’une « simple piscine ». Véritable
                    centre de loisirs, il offre un choix d’activités unique dans
                    la région, pour satisfaire toutes les envies, des petits comme
                    des grands : bassins ludique ou sportif, fosse de plongée, espace
                    de balnéothérapie...</p>
                <a href="http://www.aquaspace.fr/">
                    <button class="btn">EN SAVOIR PLUS</button>
                </a>
            </div>
        </div>
    </section>
    <section id="maternelles">
        <div class="Children">
            <h2 class="TitreSecond">LE RELAIS D'ASSISTANTES MATERNELLES</h2>
            <div class="IMG">
                <img src="./vue/pages/tourisme/assets/img/assistantes.jpg" alt="assistantes" class="img">
            </div>
            <p>Un lieu d'information sur les différents modes de garde.
                Un lieu où trouver les coordonnées d'une assistante
                maternelle agréée proche de chez soi ou de son lieu de
                travail. Une aide dans les différentes démarches
                administratives liées à la fonction d'employeur. Une information
                sur les prestations auxquelles peut prétendre tout employeur
                d'une assistante maternelle.</p>
            <h3 class="SousTitre">Renseignements :</h3>
            <p>
                Service petite enfance, Maison de la Petite Enfance, 20 avenue des écoles, 60000 Beauvais, Tél : 03 44
                79 39 09, mail : ramagglo@beauvaisis.fr
            </p>
        </div>
    </section>
</body>

</html>