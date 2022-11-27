const Rant = require('../../../models/rant.model')

async function postRant(req, res){
    const title = req.body.title
    const body = req.body.rant

    const rant = new Rant(title, body)
    
    const result = await rant.save()

    if(result){
        return res.status(400).json({
            error: "Could not add rant"
        })
    }
    
    return res.status(201).json(rant)

}

module.exports = {
    postRant
}