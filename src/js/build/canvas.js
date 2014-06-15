var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

App.Canvas = (function(_super) {
  __extends(Canvas, _super);

  Canvas.prototype.j = 0;

  Canvas.prototype.columns = 20;

  Canvas.prototype.rows = 50;

  Canvas.prototype.i = 0;

  Canvas.prototype.boxSize = {
    'height': 40,
    'width': 40
  };

  Canvas.prototype.colorList = new App.Variables().colorList;

  Canvas.prototype.fps = 5;

  Canvas.prototype.selector = false;

  function Canvas(options) {
    this.selector = options.el;
  }

  Canvas.prototype.animationLoop = function() {
    var self;
    self = this;
    setTimeout((function() {
      requestAnimFrame(function() {
        return self.animationLoop.call(self);
      });
      return self.flickerColoring();
    }), 1000 / self.fps);
  };

  Canvas.prototype.flickerColoring = function() {
    while (this.i < this.rows) {
      shuffle(this.colorList);
      this.j = 0;
      while (this.j < this.columns) {
        this.draw(this.j * this.boxSize["width"], this.i * this.boxSize["height"], this.colorList[this.j]["value"]);
        this.j++;
      }
      this.i++;
    }
  };

  Canvas.prototype.draw = function(x, y, color) {
    var ctx;
    ctx = this.selector;
    ctx.fillStyle = color;
    ctx.fillRect(this.x, this.y, this.boxSize["height"], this.boxSize["width"]);
  };

  return Canvas;

})(App.Base);
