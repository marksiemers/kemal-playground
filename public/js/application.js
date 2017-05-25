var autocompleteSource = function(term, response){
  $.getJSON('/autocomplete', { message: term }, function(data) {
    response(data.map(function(item){ return item.name }))
  })
}

var bindAjaxToElements = function() {
  new autoComplete({
    selector: '#ajax-autocomplete-input',
    source: autocompleteSource
  })
}

var awesompleteFilter = function(text, input) {
  return true
}

function isSecure() {
  return window.location.protocol == 'https:';
}

$(document).ready(function() {
  bindAjaxToElements()

  var webSocketProtocol = isSecure() ? "wss:" : "ws:"
  var ws = new WebSocket(webSocketProtocol + "//" + location.host + "/autocomplete")
  var input = document.getElementById("msg")
  var awesomplete = new Awesomplete(input, { list: [] })

  ws.onmessage = function(e) {
    var input = document.getElementById("msg")
    var list = JSON.parse(e.data).map(function(i) { return i.name })
    awesomplete.list = list
    //$('#msg').focus()
  }

  $("#msg").on('keyup', function(e) {
    if ($('#msg').val().length > 1) {
      ws.send($('#msg').val())
      $('#msg').focus()
    }
  })
  window.onbeforeunload = function() {
    websocket.onclose = function () {} // disable onclose handler first
    websocket.close()
  }
})
