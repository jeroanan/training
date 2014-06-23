d = require 'duplexer'
th = require 'through'

module.exports = (counter) ->
  counts = {}
  write = (buff) -> counts[buff.country] = (counts[buff.country] || 0) + 1
  end = -> counter.setCounts(counts)

  input = th(write, end)
  return d(input, counter)