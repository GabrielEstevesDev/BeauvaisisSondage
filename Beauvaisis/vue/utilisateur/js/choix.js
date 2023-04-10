$().ready(init);

var choix;
var uId;
function init() {
  getChoix();
  afficherChoix();
}

function getChoix() {
  url = "./index.php?controle=utilisateur&action=recupChoix";
  $.ajax({
    async: false, //défaut
    type: "GET",
    url: url,
    dataType: "json",
    success: function (retour) {
      choix = retour;
    },
    error: function (jqXHR, textStatus, errorThrown) {
      // code à exécuter en cas d'erreur
      console.error(textStatus, errorThrown);
    },
  });
}

function afficherChoix() {
  for (var i = 0; i < 10; i++) {
    $("#alim" + (i + 1)+"> .nom").text(choix[i]["alim_nom_fr"]);
  }
}
