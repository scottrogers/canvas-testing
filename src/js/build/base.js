var App;

window.requestAnimFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || function() {
  return callback(window.setTimeout(callback, 1000 / 60));
};

App = {};

App.Base = {};

App.Requests = {};

App.Base.View = {};

App.Variables = {};

App.Canvas = {};

App.Base = (function() {
  function Base(options) {}

  return Base;

})();

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

App.Base.View = (function(_super) {
  __extends(View, _super);

  function View(options) {}

  return View;

})(App.Base);
