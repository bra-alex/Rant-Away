const path = require('path')
const express = require('express')
const bodyParser = require('body-parser')

const rootDIR = require('./utils/path')
const rantRouter = require('./routes/rant.route')
const addRantRouter = require('./routes/addRant.route')
const errorRouter = require('./routes/404.route')

const app = express()

app.set('view engine', 'ejs')

app.use(bodyParser.urlencoded({extended: false}))
app.use(express.static(path.join(rootDIR, 'public')))

app.use(rantRouter)
app.use(addRantRouter)

app.use(errorRouter)

module.exports = app