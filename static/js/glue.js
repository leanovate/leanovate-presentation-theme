w3c_slidy.after_slide_display = function() {
  var outers = window.document.querySelectorAll(".center-outer");
  for (var i = 0; i < outers.length; i++) {
      var outer = outers.item(i);
      var inner = outer.querySelector(".center-inner");

      fit(inner, outer, {
          hAlign: fit.CENTER,
          vAlign: fit.CENTER,
          cover: false,
          watch: false,
          apply: true
      });
  }
};
