const express = require('express')

const rantController = require('../controllers/rant.controller')

const rantRouter = express.Router()

rantRouter.get('/rants', rantController.getRants)
rantRouter.get('/rants/:rantId', rantController.getRant)

module.exports = rantRouter