require 'webrick'

server = WEBrick::HTTPServer.new Port: 8000, DocumentRoot: File.expand_path("~/")

trap 'INT' do server.shutdown end

server.mount_proc '/' do |req, res|
  res.body = 'Hello world!'
end


server.start