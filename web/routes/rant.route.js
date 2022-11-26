const express = require('express')

const rantController = require('../controllers/rant.controller')

const rantRouter = express.Router()

rantRouter.get('/', rantController.getRants)
rantRouter.get('/:rantId', rantController.getRant)

module.exports = rantRouter