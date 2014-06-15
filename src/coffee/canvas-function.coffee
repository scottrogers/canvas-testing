boxSize =
  height: 40
  width: 40
yOffset = 10
j = 1
columns = 20
rows = 50
fps = 5

flickerColoring = ->
  i = 0

  while i < rows
    shuffle colorList
    j = 0

    while j < columns
      draw j * boxSize["width"], i * boxSize["height"], colorList[j]["value"]
      j++
    i++
  return

draw = (x, y, color) ->
  ctx = document.getElementById("canvas").getContext("2d")
  ctx.fillStyle = color
  ctx.fillRect x, y, boxSize["height"], boxSize["width"]
  return


(animloop = (time) ->
  setTimeout (->
    requestAnimFrame animloop
    flickerColoring time
    return
  ), 1000 / fps
  return
)()
document.addEventListener "DOMContentLoaded", ->


# for (var i = 0; i < rows; i++) {
#   shuffle(colorList);
#   for (var j = 0; j < columns; j++) {
#     draw(j*boxSize['width'], i*boxSize['height'], colorList[j]['value'], j*500);
#   };
# };