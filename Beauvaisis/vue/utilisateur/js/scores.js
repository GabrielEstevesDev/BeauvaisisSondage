$().ready(init);

var nutriscore;
var scoresante;
var uId;
function init() {
  getScores();
  afficherScores();
}

function getScores() {
  url = "./index.php?controle=utilisateur&action=getScore";
  $.ajax({
    async: false, //défaut
    type: "GET",
    url: url,
    dataType: "json",
    success: function (retour) {
      nutriscore = retour["nutriscore"];
      scoresante = retour["scoresante"];
    },
    error: function (jqXHR, textStatus, errorThrown) {
      // code à exécuter en cas d'erreur
      console.error(textStatus, errorThrown);
    },
  });
}

function afficherScores() {
  $(".nutriscore").text(nutriscore);
  $(".scoresante").text(scoresante);
}
