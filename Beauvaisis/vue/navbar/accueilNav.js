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
  nav = document.getElementById("navbar");
  page = document.getElementById("page");
  header = document.querySelector("header");
  window.addEventListener("scroll", navPosition);
  window.addEventListener("resize", navPosition);
  toogle.addEventListener("click", navResp);
  var liConnected = document.getElementById("connected");
  if (liConnected != null) {
    htlmLiUser = liConnected.innerHTML;
    liConnected.addEventListener("mouseenter", OverLiUser);
    liConnected.addEventListener("mouseleave", OutLiUser);
  }
}

function navPosition() {
  if (window.innerWidth <= 900 || window.scrollY > header.offsetHeight) {
    nav.style.position = "fixed";
    nav.style.top = 0;
    nav.style.left = "50%";
    nav.style.transform = "translateX(-50%)";
  } else {
    nav.style.position = "static";
    nav.style.transform = "translateX(0)";
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
