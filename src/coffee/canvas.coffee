class App.Canvas extends App.Base
  j: 0
  columns: 20
  rows: 50
  i: 0
  boxSize: {'height': 40, 'width': 40}
  colorList: new App.Variables().colorList
  fps: 5
  selector: false
  constructor: (options) ->
    @selector = options.el

  animationLoop: ->
    self = this

    setTimeout (->
      requestAnimFrame( -> self.animationLoop.call(self))
      self.flickerColoring()
    ), 1000/self.fps

    return

  flickerColoring: ->
    while @i < @rows
      shuffle @colorList
      @j = 0

      while @j < @columns
        @draw @j * @boxSize["width"], @i * @boxSize["height"], @colorList[@j]["value"]
        @j++
      @i++
    return

  draw: (x, y, color) ->
    ctx = @selector
    ctx.fillStyle = color
    ctx.fillRect @x, @y, @boxSize["height"], @boxSize["width"]
    return


# document.addEventListener "DOMContentLoaded", ->
#   (canvas = new App.Canvas
#     el: document.getElementById("canvas").getContext("2d")

#   canvas.animationLoop())()