doctype html
html
  head
    title Kemal Chat
    script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"
    script src="/js/awesomplete.min.js"
    script src="/js/auto-complete.min.js"
    script src="/js/application.js"
    link rel="stylesheet" href="/css/awesomplete.css"
    link rel="stylesheet" href="/css/auto-complete.css"
  body
    #websocket-autocomplete-container
      h1 Web Sockets autocomplete
      form#websocket-autocomplete-form
        input#msg placeholder="Type here..."

    #ajax-autocomplete-container
      h1 AJAX autocomplete
      form#ajax-autocomplete-form
        input#ajax-autocomplete-input placeholder="Type here..."
