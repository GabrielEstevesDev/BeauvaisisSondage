$().ready(init);

var categories;
var nbVal = 0;
var maxi;

function init() {
  getCategories();
  maxi = getMax();
  setPercent();
  anim();
}

function getCategories() {
  url = "./index.php?controle=utilisateur&action=recupCategories";
  $.ajax({
    async: false, //défaut
    type: "GET",
    url: url,
    dataType: "json",
    success: function (retour) {
      categories = retour;
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.error(textStatus, errorThrown);
    },
  });

  for (var i = 1; i < 12; i++) {
    nbVal = nbVal + categories[i];
  }
}

function getMax() {
  var max;
  for (var i = 1; i < 11; i++) {
    if (max == null || parseInt((categories[i] / nbVal) * 100) > parseInt(max))
      max = (categories[i] / nbVal) * 100;
  }
  return max;
}

function setPercent() {
  for (var i = 1; i < 12; i++) {
    $("div.cat" + i).attr(
      "data-percent",
      Math.round((categories[i] / nbVal) * 100) + "%"
    );
  }
}

function anim() {
  setTimeout(function start() {
    $(".bar").each(function (i) {
      var $bar = $(this);
      $(this).append('<span class="count"></span>');
      setTimeout(function () {
        var val = parseInt($bar.attr("data-percent"));
        if (maxi >= 75) val = val * 1;
        else if (maxi >= 50 && maxi < 75) val = val * 1.5;
        else if (maxi >= 20 && maxi < 50) val = val * 2;
        else val = val * 2.5;
        $bar.css("width", "calc("+ val + "% + 6.6em)");
      }, i * 100);
    });

    $(".count").each(function () {
      $(this)
        .prop("Counter", 0)
        .animate(
          {
            Counter: $(this).parent(".bar").attr("data-percent"),
          },
          {
            duration: 2000,
            easing: "swing",
            step: function (now) {
              $(this).text(Math.ceil(now) + "%");
            },
          }
        );
    });
  }, 500);
}
