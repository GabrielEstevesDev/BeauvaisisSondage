<?php

function deconnexion(){
    session_destroy();
    $url="./index.php?controle=utilisateur&action=accueil"; //redirection accueil
    header("Location:" . $url);
}
// $id = isset($_SESSION['id'])?($_SESSION['id']):NULL;

// if($id == NULL) {
//     header("Location: ../ident.php");
// }

// $_SESSION['id'] = NULL;
// header("Location: ../ident.php");

?>