const mongoose = require('mongoose')

require('dotenv').config()

const MONGO_URL = process.env.MONGO_URL

mongoose.connection.once('open', () => console.log('Connected'))

mongoose.connection.on('end', () => console.log('Disconnected'))

async function connectMongo(){
    return await mongoose.connect(MONGO_URL)
}

module.exports = {
    connectMongo
}