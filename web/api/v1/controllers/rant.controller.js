const Rant = require('../../../models/rant.model')

async function getRants(req, res) {
    const rants = await Rant.fetchRants()

    if(!rants){
        return res.status(404).json({
            error: "No rants found"
        })
    }

    res.status(200).json(rants)
}

async function getRant(req, res) {
    const rantID = req.params.rantId

    const rant = await Rant.findByID(rantID)

    if(!rant){
        return res.status(404).json({
            error: "Rant not found"
        })
    }

    res.status(200).json(rant)
}


module.exports = {
    getRants,
    getRant
}