doctype html
html
  head
    title Kemal Chat
    script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"
    script src="/js/application.js"
    script src="/js/awesomplete.min.js"
    link rel="stylesheet" href="/css/awesomplete.css"
  body
    pre#chat
    form
      input#msg placeholder="message..." /
      input type="submit" value="Send" /
    pre#preview
      span.title Preview:
      span.body
