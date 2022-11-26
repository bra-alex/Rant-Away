const Rant = require('../models/rant.model')
const errorController = require('./404.controller')

async function getRants(req, res) {
    const rants = await Rant.fetchRants()

    res.render('index', {
        pageTitle: 'Rants',
        rants: rants
    })
}

async function getRant(req, res) {
    const rantID = req.params.rantId

    const rant = await Rant.findByID(rantID)

    if(!rant){
        errorController(req, res)
    }

    res.render('rant', {
        pageTitle: "sure",
        rant: rant,
    })
}

module.exports = {
    getRants,
    getRant,
}