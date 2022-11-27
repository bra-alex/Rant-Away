const express = require('express')

const addRantController = require('../controllers/addRant.controller')

const addRantRouter = express.Router()

addRantRouter.post('/add-rant', addRantController.postRant)

module.exports = addRantRouter