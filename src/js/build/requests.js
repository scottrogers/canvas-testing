App.Requests = (function() {
  function Requests() {}

  Requests.prototype.data = function(url, cb) {
    return this.buildRequest(url, cb);
  };

  Requests.prototype.allSpecs = function(url) {
    return this.buildRequest(url);
  };

  Requests.prototype.buildRequest = function(url, cb) {
    return $.ajax({
      url: 'proxy',
      data: {
        url: encodeURI(url)
      },
      type: 'GET',
      dataType: "json",
      success: function(data) {
        return cb.call(this, data);
      },
      error: function(err, xhr, data) {
        console.log(err, xhr, data);
        return console.log("error");
      }
    });
  };

  return Requests;

})();
