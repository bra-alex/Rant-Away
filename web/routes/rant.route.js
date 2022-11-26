const express = require('express')

const rantController = require('../controllers/rant.controller')

const rantRouter = express.Router()

rantRouter.get('/', rantController)

module.exports = rantRouter