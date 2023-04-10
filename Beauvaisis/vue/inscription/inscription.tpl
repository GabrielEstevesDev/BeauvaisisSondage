<!DOCTYPE HTML>
<html lang="fr">
<meta charset="UTF-8">

<head>
    <title>PROJET WEB</title>
    <link rel="stylesheet" href="./vue/inscription/assets/inscription.css">
    <script src="./vue/inscription/assets/inscription.js"></script>
</head>

<body>
    <header>
        <?php require("./vue/navbar/navbar.tpl"); ?>
    </header>
    <div id="page">
        <div class="form">
            <h1 class=" Titre">S'inscrire</h1>
            <form action="./index.php?controle=inscription&action=inscription" method="post">
                <label for="silogin"> <input type="text" id="silogin" name="silogin" placeholder="Login"><br></label>
                <p class="msg" id="msgLogin"></p>
                <label for="siemail"> <input type="email" id="siemail" name="siemail" value=""
                        placeholder="Email"><br></label>
                <p class="msg" id="emailmsg"></p>
                <div id="mdpvue">

                    <label class="labelmdp">
                        <input type="password" id="inputmdp" name="simdp" placeholder="Mot de passe">

                        <div class="password-icon">
                            <i class="fa-regular fa-eye"></i>
                            <i class="fa-regular fa-eye-slash"></i>
                        </div>
                    </label>
                    <p class="msg" id="msgPass"></p>
                    <label class="labelmdp">
                        <input type="password" id="confirmmdp" name="simdp" placeholder="Confirmez le mot de passe">
                        <div class="password-icon">
                            <i class="fa-regular fa-eye"></i>
                            <i class="fa-regular fa-eye-slash"></i>
                        </div>
                    </label>
                    <p class="msg" id="msgConfirmPass"></p>
                </div>
                <a id="connexion" href="./index.php?controle=connexion&action=ident">
                    <p>Déja un compte ?
                        Se connecter</p>
                </a>
                <input id="btnInput" type="submit" value="Inscription">
            </form>
            <div class="msgImportant"><?php if(isset($msgAcc)) echo$msgAcc;?></div>
        </div>
    </div>
</body>



</html>