http = require 'http'
through = require 'through'
write = (buff) ->
  str = buff.toString()
  return str.toUpperCase()

serverCallback = (req, res) ->
  req.pipe(tr).pipe(res)

tr = through(write)

server = http.createServer (req, res) -> serverCallback(req, res)
server.listen(process.argv[2])