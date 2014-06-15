var delay, shuffle;

String.prototype.toObject = function() {
  var o;
  o = {};
  this.replace(new RegExp("([^?=&]+)(=([^&]*))?", "g"), function($0, $1, $2, $3) {
    return o[$1] = $3;
  });
  return o;
};

delay = function(time, callback) {
  return setTimeout(function() {
    return callback.call();
  }, time);
};

shuffle = function(array) {
  var i, m, t;
  m = array.length;
  t = void 0;
  i = void 0;
  while (m) {
    i = Math.floor(Math.random() * m--);
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }
  return array;
};
