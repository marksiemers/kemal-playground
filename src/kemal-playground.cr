require "./kemal-playground/*"

require "kemal"
require "json"
require "kilt/slang"

SOCKETS = [] of HTTP::WebSocket

get "/" do
  render "src/views/index.slang"
end

get "/json" do |env|
  env.response.content_type = "application/json"
  { name: "Mark", age: 34 }.to_json
end

get "/:name" do |env|
  name = env.params.url["name"]
  render "src/views/hello.ecr", "src/views/layouts/layout.ecr"
end

get "/autocomplete" do |env|
  message = env.params.query["message"].as(String)
  [{ name: message }, { name: "#{message} Also this" }, { name: "#{message} and this"}].to_json
end

ws "/autocomplete" do |socket|
  socket.on_message do |message|
    socket.send [{ name: message }, { name: "#{message} Also this" }, { name: "#{message} and this"}].to_json
  end
end

ws "/chat" do |socket|

  # Add the client to SOCKETS list
  SOCKETS << socket

  # Broadcast each message to all clients
  socket.on_message do |message|
    SOCKETS.each { |socket| socket.send message}
  end

  # Remove clients from the list when it's closed
  socket.on_close do
    SOCKETS.delete socket
  end

end

Kemal.run
