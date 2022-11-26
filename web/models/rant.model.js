const fs = require('fs')
const path = require('path')

const rootDIR = require('../utils/path')

const filePath = path.join(rootDIR, 'data', 'rants.json') 

function getData(cb){
    fs.readFile(filePath, (err, fileContent) => {
        if(err){
            return cb([])
        }

        return cb(JSON.parse(fileContent))
    })
}

module.exports = class Rant {
    constructor(title, rant) {
        this.title = title
        this.rant = rant
    }

    save(){
        this.id = Math.floor(Math.random() * 1000000).toString()
        getData(rants => {
            rants.push(this)

            fs.writeFile(filePath, JSON.stringify(rants), (err) => {
                if (err) {
                    return err
                }
            })
        })
    }

    static fetchRants(cb){
        getData(cb)
    }

    static findByID(id, cb){
        getData(rants => {
            const rant = rants.find(r => r.id === id)
            cb(rant)
        })
    }
}