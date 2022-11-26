const Rant = require('../models/rant.model')

function getRants(req, res){
    Rant.fetchRants(rants => {
        res.render('index', {
            pageTitle: 'Rants',
            rants: rants
        })
    })
}

function getRant(req, res){
    const rantID = req.params.rantId

    Rant.findByID(rantID, rant => {
        res.render('rant', {
            pageTitle: "sure",
            rant: rant,
        })
    })
}

module.exports = {
    getRants,
    getRant,
}