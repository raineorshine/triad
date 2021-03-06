express = require('express')
bodyParser = require('body-parser')
indexController = require('./controllers/index.js')

app = express()
app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.static(__dirname + '/public')
app.use bodyParser.urlencoded extended:false
app.get '/', indexController.index

server = app.listen 4388, ->
	console.log 'Express server listening on port ' + server.address().port
