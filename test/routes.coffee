
assert = require 'assert'
util = require 'util'

describe 'routes', ->

    expectedRouteMap =
        home: ['/']
        post: ['/post/:id']

    it 'should map the correct route patterns', ->
        [actualRoutes, currentModuleName] = [{}, '']

        # mock 'app' object so it progressively builds actualRoutes
        app = get: (routePattern) ->
            actualRoutes[currentModuleName] ?= []
            actualRoutes[currentModuleName].push(routePattern)

        # put the routes for each module into our local routes object
        buildRoutes = (forModuleName) ->
            currentModuleName = forModuleName
            routeModuleInitialiser = require("../routes/#{forModuleName}.coffee")
            routeModuleInitialiser(app)

        buildRoutes(name) for name, routes of expectedRouteMap
        assert.deepEqual actualRoutes, expectedRouteMap

