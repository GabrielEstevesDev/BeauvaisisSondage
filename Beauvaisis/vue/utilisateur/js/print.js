$().ready(init);
var nom;
var buttonShowHistChart;
var container;
function init() {
  getNom();
  document.getElementById("nom").innerHTML=nom;
  document.getElementById("btnRefaireSondage").style.display= "none";
  document.getElementById("btnPdf").style.display= "none";
  document.getElementById("containchoix").style.marginTop="45%";
  document.getElementById("idscores").style.margin="0";
  document.getElementById("idscores").style.padding="0";
  buttonShowHistChart = $("#showHistChart");
  buttonShowHistChart.click(show);
  document.getElementById("showHistChart").click();
  setTimeout(printPdf, 8000);
}
function btnClick(){
  var sectionHistChart = $("#histChart");
  buttonShowHistChart.hide();
    sectionHistChart.load("./vue/charts/hist_chart.tpl");
}

function getNom() {
  url = "./index.php?controle=utilisateur&action=getNom";
  $.ajax({
    async: false, //défaut
    type: "GET",
    url: url,
    success: function (retour) {
      nom = retour;
    },
    error: function (jqXHR, textStatus, errorThrown) {
      // code à exécuter en cas d'erreur
      console.error(textStatus, errorThrown);
    },
  });
}


function printPdf() {
  window.print();
}
