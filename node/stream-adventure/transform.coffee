through = require 'through'

write = (buff) ->
  this.queue(buff.toString().toUpperCase())

end = -> return

tr = through(write, end)

process.stdin.pipe(tr).pipe(process.stdout)