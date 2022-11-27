const Rant = require('../models/rant.model')

function getAddRant(req, res){
    res.render('add-rant', {
        pageTitle: 'Rants'
    })
}

async function postAddRant(req, res){
    const title = req.body.title
    const body = req.body.rant

    const rant = new Rant(title, body)

    await rant.save()

    res.redirect('/')
}

module.exports = {
    getAddRant,
    postAddRant
}