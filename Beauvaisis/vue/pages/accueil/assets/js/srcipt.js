var nav;
var page;
var body;
var toogle;
var header;

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
