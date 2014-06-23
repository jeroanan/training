tr = require 'trumpet'
through = require 'through'
t = new tr()

write = (buff) ->
  this.queue(buff.toString().toUpperCase())

th = through(write)

stream = t.select('.loud').createStream()
stream.pipe(th).pipe(stream)

process.stdin.pipe(t).pipe(process.stdout)




