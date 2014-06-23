c = require('child_process').spawn
d = require 'duplexer'

run = -> return

module.exports = (cmd, args) ->
  ps = c(cmd, args)
  return d(ps.stdin, ps.stdout)