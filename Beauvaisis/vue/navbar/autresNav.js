var nav;
var page;
var body;
var toogle;
var header;
var htlmLiUser;
window.addEventListener("load", init);
function init() {
  toogle = document.querySelector(".toogle");
  body = document.querySelector("body");
  toogle.addEventListener("click", navResp);
  var liConnected = document.getElementById("connected");
  if (liConnected != null) {
    htlmLiUser = liConnected.innerHTML;
    liConnected.addEventListener("mouseenter", OverLiUser);
    liConnected.addEventListener("mouseleave", OutLiUser);
  }
}

function navResp() {
  body.classList.toggle("open");
}

function OverLiUser(e) {
  e.target.innerHTML =
    "<a href='./index.php?controle=logout&action=deconnexion'>Déconnexion</a>";
}

function OutLiUser(e) {
  e.target.innerHTML = htlmLiUser;
}
