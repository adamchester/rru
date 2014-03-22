assert = require 'assert'
util = require 'util'

describe 'app', ->
    sut = require '../app.coffee'
    it 'should define the express application', -> assert.ok sut.application
