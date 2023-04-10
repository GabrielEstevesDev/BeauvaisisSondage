window.addEventListener("load", init);
var lastObjAlim;
var tabAlim;
var tableNames;
function init() {
  tabAlim = new Array();
  var inputSubmit = document.getElementById("submit");
  window.addEventListener("click", fermerListe);
  inputSubmit.style.display = "none";
  var buttonChoisir = document.getElementById("choisir");
  buttonChoisir.addEventListener("click", ajoutAlim);
  for (let option of browsers.options) {
    option.onclick = function (e) {
      browsers.style.display = "none";
      input.style.borderRadius = "5px";
      lastObjAlim = { code: e.target.id, nom: option.textContent };
      input.value = option.textContent;
    };
  }
  tableNames = document.getElementById("names");
  tableNames.style.display = "none";
}

function fermerListe(e) {
  if (e.target.id != "input" && e.target.tagName != "option")
    browsers.style.display = "none";
}

function ajoutAlim(e) {
  var buttonChoisir = document.getElementById("choisir");
  var input = document.getElementById("input");
  if (input.value.length != 0) {
    tabAlim.push(lastObjAlim);
    tableNames.style.display = "table-header-group";
    afficherAlimChoisi();
    if (tabAlim.length == 10) {
      buttonChoisir.removeEventListener("click", ajoutAlim);
      buttonChoisir.classList.remove("ajout");
      buttonChoisir.classList.add("envoi");
      buttonChoisir.innerHTML = "ENVOYER";
      buttonChoisir.addEventListener("click", envoyerAliments);
      
    }
  }
}

function afficherAlimChoisi() {
  insert.innerHTML = "";
  for (let [i, choix] of tabAlim.entries()) {
    var number = i + 1;
    insert.innerHTML =
      insert.innerHTML +
      "<tr><td>" +
      number +
      "</td><td>" +
      choix["nom"] +
      "</td><td><button id=" +
      i +
      " class='supOption button supprimer btn'>Supprimer</button></td></tr>";
  }
  for (let choix of document.getElementsByClassName("supOption")) {
    choix.addEventListener("click", supChoix);
  }
}

function supChoix(e) {
  if(tabAlim.length == 1) {
    tableNames.style.display = "none";
  }
  var index = e.target.id;
  if (index > -1) {
    tabAlim.splice(index, 1);
  }
  afficherAlimChoisi();
  var buttonChoisir = document.getElementById("choisir");
  if (tabAlim.length < 10) {
    buttonChoisir.innerHTML = "Ajouter";
    buttonChoisir.removeEventListener("click", envoyerAliments);
    buttonChoisir.addEventListener("click", ajoutAlim);
    buttonChoisir.classList.add("ajout");
    buttonChoisir.classList.remove("envoi");
  }
}

function envoyerAliments() {
  // data = { array: arrayAlim, controle: "aliment", action: "envoyer10alim" };
  data = { array: tabAlim };
  $.ajax({
    type: "POST",
    url: "./index.php?controle=aliment&action=envoyer10alim",
    data: data,
    success: function () {
      document.location.href =
        "./index.php?controle=utilisateur&action=accueil";
    },
    error: function () {
      alert("PB URL");
    },
  });
}
