colorList = [];
colorList.push({'color': 'turquoise', 'value':     '#1abc9c'});
colorList.push({'color': 'green-sea', 'value':     '#16a085'});
colorList.push({'color': 'emerland', 'value':      '#2ecc71'});
colorList.push({'color': 'nephritis', 'value':     '#27ae60'});
colorList.push({'color': 'peter-river', 'value':   '#3498db'});
colorList.push({'color': 'belize-hole', 'value':   '#2980b9'});
colorList.push({'color': 'amethyst', 'value':      '#9b59b6'});
colorList.push({'color': 'wisteria', 'value':      '#8e44ad'});
colorList.push({'color': 'wet-asphalt', 'value':   '#34495e'});
colorList.push({'color': 'midnight-blue', 'value': '#2c3e50'});
colorList.push({'color': 'sun-flower', 'value':    '#f1c40f'});
colorList.push({'color': 'orange', 'value':        '#f39c12'});
colorList.push({'color': 'carrot', 'value':        '#e67e22'});
colorList.push({'color': 'pumpkin', 'value':       '#d35400'});
colorList.push({'color': 'alizarin', 'value':      '#e74c3c'});
colorList.push({'color': 'pomegranate', 'value':   '#c0392b'});
colorList.push({'color': 'clouds', 'value':        '#ecf0f1'});
colorList.push({'color': 'silver', 'value':        '#bdc3c7'});
colorList.push({'color': 'concrete', 'value':      '#95a5a6'});
colorList.push({'color': 'asbestos', 'value':      '#7f8c8d'});

window.requestAnimFrame = window.requestAnimationFrame or window.webkitRequestAnimationFrame or window.mozRequestAnimationFrame or (callback) ->
  window.setTimeout callback, 1000 / 60

class App.Variables extends App.Base

  boxSize: {'height': 40, 'width': 40}
  colorList: colorList
  yOffset: 10
  j: 1
  columns: 20
  rows: 50
  fps: 5
