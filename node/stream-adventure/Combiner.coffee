combine = require 'stream-combiner'
through = require 'through'
split = require 'split'


module.exports = ->

  currentGenre = ''

  write = (buf) -> this.queue(buf.toString())
  th = through(write)

  return combine(th, process.stdout)