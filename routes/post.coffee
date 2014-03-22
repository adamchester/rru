
module.exports = (app) ->

    app.get '/post/:id', (req, res) ->
        res.send "Hello, CoffeeScript on Azure!"