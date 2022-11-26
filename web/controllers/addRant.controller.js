function getAddRant(req, res){
    res.render('add-rant')
}

function postAddRant(req, res){
    console.log(req.body.title, req.body.rant);

    res.redirect('/')
}

module.exports = {
    getAddRant,
    postAddRant
}