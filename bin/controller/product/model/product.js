const {db} = require('../../../../config/dbConnect')

const createProduct = (payload) => {
    return new Promise((resolve, reject) => {
        const qStr = "INSERT INTO products SET ?"
        db.query(qStr, payload, (err, data) => {
          if(!err) {
            resolve(data)
          }else{
            reject(err)
          }
        })
    })
}

const createSize = async(payload) => {
    const qStr = "INSERT INTO product_size SET ?"
    console.log(payload)
    return await db.query(qStr, payload)
}


module.exports = {
    createProduct,
    createSize
}