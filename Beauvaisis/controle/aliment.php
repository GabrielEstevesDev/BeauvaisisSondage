<?php
function envoyer10alim(){
    $id = isset($_SESSION['id'])?($_SESSION['id']):NULL;
    $tab= isset($_POST["array"])?($_POST["array"]):NULL;
    // var_dump($tab);
    // var_dump($tabAlimCode);
    if($id == NULL) { // si l'utilisateur n'est pas connecter on le renvoit sur la page de connexion
        $url = "./?controle=connexion&action=ident";
        header("Location:". $url);
    }
    else if ($tab == NULL){
        $url = "./?controle=aliment&action=accueil";
        header("Location:". $url);
    }
    else{
    require("./modele/envoyerAlim.php");
    envoyerSondage($tab); // on insert la ligne dans sondage 
    // $url = "./?controle=utilisateur&action=accueil";
    // header("Location:". $url);
}
}

function accueil(){
    require("./modele/recupAlim.php");
    $resultat=recupAlim();
    require("./vue/Aliments/Aliment.tpl");
}

?>