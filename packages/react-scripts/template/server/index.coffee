express = require 'express'
bodyParser = require 'body-parser'

app = express()
app.use bodyParser.json({type: '*/*'})


router = express.Router()

router.get '/', (req, res) => res.send 'Hello world'

app.use '/api', router


port = process.env.PORT ? 3001
app.listen port
console.log "API running at localhost:#{port}/api"
