var sections;
var but;
var nav;
var page;
var body;
var toogle;
var header;

function init(){
    scrollBy(0,1)
    sections = document.getElementsByTagName('section');
    but = document.getElementsByTagName('button')[0];
    for (var i = 2; i < sections.length; i++) {
        sections[i].style.display = 'none';        
    }
    toogle = document.querySelector(".toogle");
    body = document.querySelector("body");
    nav = document.getElementById("navbar");
    page = document.getElementById("page");
    header = document.querySelector("header");
    window.addEventListener("scroll", navPosition);
    window.addEventListener("resize", navPosition);
    toogle.addEventListener("click", navResp);
}

function displayMore(){
    if(sections!=null){
        for (var i = 0; i < sections.length-1; i++) {
            if(sections[i].style.display=='none' || (sections[i+1].style.display=='none' && i==sections.length-2)){
                sections[i].style.display = 'block';
                sections[i+1].style.display = 'block';
                break;
            }     
        }
        if(sections[sections.length-1].style.display!='none'){
            but.style.display='none';
        }
    }
}

function navPosition() {
    nav.style.position = "fixed";
    nav.style.top = 0;
    nav.style.left = "50%";
    nav.style.transform = "translateX(-50%)";
}

function navResp() {
    body.classList.toggle("open");
}