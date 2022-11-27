const path = require('path')
const express = require('express')
const bodyParser = require('body-parser')

const rootDIR = require('./utils/path')

const api = require('./api/api')
const rantRouter = require('./routes/rant.route')
const errorRouter = require('./routes/404.route')
const addRantRouter = require('./routes/addRant.route')

const app = express()

app.set('view engine', 'ejs')

app.use(express.json())
app.use(bodyParser.urlencoded({extended: false}))
app.use(express.static(path.join(rootDIR, 'public')))

app.use('/api', api)
app.use(addRantRouter)
app.use(rantRouter)

app.use(errorRouter)

module.exports = app