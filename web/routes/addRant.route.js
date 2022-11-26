const express = require('express')

const addRantController = require('../controllers/addRant.controller')

const addRantRouter = express.Router()

addRantRouter.get('/add-rant', addRantController.getAddRant)
addRantRouter.post('/add-rant', addRantController.postAddRant)

module.exports = addRantRouter