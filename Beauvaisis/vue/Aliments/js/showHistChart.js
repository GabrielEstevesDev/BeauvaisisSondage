$(document).ready(init);
var buttonShowHistChart;
function init(){
    buttonShowHistChart = $("#showHistChart");
    buttonShowHistChart.click(show);
};

function show(){
    var sectionHistChart = $("#histChart");
    buttonShowHistChart.hide();
    sectionHistChart.load("./vue/charts/hist_chart.tpl");
};