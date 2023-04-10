<!DOCTYPE html>
<html>

<head>
    <title>PDF</title>
    <meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <link rel="stylesheet" href="./vue/utilisateur/css/pdf.css">
    
</head>

<body>
    <h1 class="titre" id="nom"></h1>
    <h1 class="titre" >Revlevé de vos choix</h1>
    <?php require("./vue/utilisateur/page.tpl"); ?>
</body>
<script src="./vue/utilisateur/js/print.js"></script>
</html>