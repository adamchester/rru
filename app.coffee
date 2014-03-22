
express = require 'express'

module.exports.application = app = express()


require('./routes/home.coffee')(app)
