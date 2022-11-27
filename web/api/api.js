const express = require('express')

const rantRouter = require('./v1/routes/rant.route')
const addRantRouter = require('./v1/routes/addRant.route')

const api = express.Router()

api.use('/v1', rantRouter)
api.use('/v1', addRantRouter)

module.exports = api