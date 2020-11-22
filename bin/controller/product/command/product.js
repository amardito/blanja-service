const {createProduct, createSize} = require('../model/product')

const newProduct = async (req,res) => {
    const payload = req
    let productID = Date.now()
    let payloads
    let test = payload.body.id_size

    for(let i = 0; i<test.length; i++){
        payloads = {
            id_product : productID,
            id_size : payload.body.id_size[i]
        }
        createSize(payloads)
    }

    payloads = (payload) => {
        delete payload.body.id_size
        
        const data = {
            id_product : productID,
            ...payload.body,
            created_at: new Date(Date.now()),
            updated_at: new Date(Date.now()),
        }
        return data
    }
    createProduct(payloads(payload)).then((data) => {
        const resObject = {
            msg: "success create new product",
            data: { id: productID, ...payload.body },
        }
        res.json(resObject)
    })
    .catch((err) => {
        res.json(err)
    })
}

module.exports = { 
    newProduct
}