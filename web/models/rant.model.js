const rantModel = require('./rant.mongo')

module.exports = class Rant {
    constructor(title, rant) {
        this.title = title
        this.rant = rant
    }

    async save(){
        this.id = Math.floor(Math.random() * 1000000).toString()
        this.date = Date.now()

        try {
            await rantModel.findOneAndUpdate(
                {id: this.id},
                this,
                {upsert: true})
        } catch (err) {
            return err
        }
    }

    static async fetchRants(cb){
        return await rantModel.find({}, {
            _id: 0,
            __v: 0
        })
    }

    static async findByID(id){
        return await rantModel.findOne({id: id}, {
            _id: 0,
            __v: 0
        })
    }
}