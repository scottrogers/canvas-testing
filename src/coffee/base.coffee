#
# Create all the things
#
window.requestAnimFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || -> ( callback ) window.setTimeout(callback, 1000 / 60) ;


App = {}
App.Base = {}
App.Requests = {}
App.Base.View = {}
App.Variables = {}
App.Canvas = {}


class App.Base


  constructor: (options) ->
    # ...

