const express = require('express')

const errorController = require('../controllers/404.controller')

const errorRouter = express.Router()

errorRouter.use('/', errorController)

module.exports = errorRouter