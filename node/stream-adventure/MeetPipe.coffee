f = require 'fs'

fileName = process.argv[2]

f.createReadStream(fileName).pipe(process.stdout)