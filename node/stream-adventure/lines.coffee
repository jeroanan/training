through = require 'through'
split = require 'split'
counter = 1

write = (buff) ->
  str = buff.toString()
  if counter%2 is 0 then str = str.toUpperCase()
  else str = str.toLowerCase()

  counter++
  console.log(str)

tr = through(write)
process.stdin.pipe(split('\n')).pipe(tr).pipe(process.stdout)