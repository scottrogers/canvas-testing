var animloop, boxSize, columns, draw, flickerColoring, fps, j, rows, yOffset;

boxSize = {
  height: 40,
  width: 40
};

yOffset = 10;

j = 1;

columns = 20;

rows = 50;

fps = 5;

flickerColoring = function() {
  var i;
  i = 0;
  while (i < rows) {
    shuffle(colorList);
    j = 0;
    while (j < columns) {
      draw(j * boxSize["width"], i * boxSize["height"], colorList[j]["value"]);
      j++;
    }
    i++;
  }
};

draw = function(x, y, color) {
  var ctx;
  ctx = document.getElementById("canvas").getContext("2d");
  ctx.fillStyle = color;
  ctx.fillRect(x, y, boxSize["height"], boxSize["width"]);
};

(animloop = function(time) {
  setTimeout((function() {
    requestAnimFrame(animloop);
    flickerColoring(time);
  }), 1000 / fps);
})();

document.addEventListener("DOMContentLoaded", function() {});
