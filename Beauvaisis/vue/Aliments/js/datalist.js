input.onfocus = function () {
  browsers.style.display = "block";
  input.style.borderRadius = "5px 5px 0 0";
};

input.oninput = function () {
  currentFocus = -1;
  var text = input.value.toUpperCase();
  for (let option of browsers.options) {
    if (option.value.toUpperCase().indexOf(text) > -1) {
      option.style.display = "block";
    } else {
      option.style.display = "none";
    }
  }
};
var currentFocus = -1;
input.onkeydown = function (e) {
  if (e.keyCode == 40) {
    currentFocus++;
    addActive(browsers.options);
  } else if (e.keyCode == 38) {
    currentFocus--;
    addActive(browsers.options);
  } else if (e.keyCode == 13) {
    e.preventDefault();
    if (currentFocus > -1) {
      /*and simulate a click on the "active" item:*/
      if (browsers.options) browsers.options[currentFocus].click();
    }
  }
};

function addActive(x) {
  if (!x) return false;
  removeActive(x);
  if (currentFocus >= x.length) currentFocus = 0;
  if (currentFocus < 0) currentFocus = x.length - 1;
  x[currentFocus].classList.add("active");
}
function removeActive(x) {
  for (var i = 0; i < x.length; i++) {
    x[i].classList.remove("active");
  }
}
