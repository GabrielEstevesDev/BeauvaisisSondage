// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function () {
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
  document.getElementById("navbar").style.visibility = "hidden";
};

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modal.style.display = "none";
  document.getElementById("navbar").style.visibility = "visible";
};

var nav;
var page;
var body;
var toogle;
var header;

scrollBy(0, 1);
toogle = document.querySelector(".toogle");
body = document.querySelector("body");
nav = document.getElementById("navbar");
page = document.getElementById("page");
header = document.querySelector("header");
window.addEventListener("scroll", navPosition);
window.addEventListener("resize", navPosition);
toogle.addEventListener("click", navResp);

function navPosition() {
  nav.style.position = "fixed";
  nav.style.top = 0;
  nav.style.left = "50%";
  nav.style.transform = "translateX(-50%)";
}

function navResp() {
  body.classList.toggle("open");
}
