$( document ).ready(function() {
  $("#ex6").on("slide", function(slideEvt) {
  $("#budgetReadout").text("£"+slideEvt.value[0]/1000 + "k to £" + slideEvt.value[1]/1000 + "k");
});
});
