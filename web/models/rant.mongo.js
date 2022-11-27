const mongoose = require('mongoose')

const rantSchema = new mongoose.Schema({
    id: {
        type: String,
        required: true
    },
    title: {
        type: String,
        required: true
    },
    rant: {
        type: String,
        required: true
    },
    date: {
        type: Date,
        required: true
    }
})

const rantModel = mongoose.model('RantsDB', rantSchema)

module.exports = rantModel