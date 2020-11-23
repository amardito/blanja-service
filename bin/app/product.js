const express = require('express')
const app = express.Router()
const {newProduct,getProductId,updateProductId,deleteProductId} = require('../controller/product/command/product')

app.post('/create', newProduct)
app.get('/:id',getProductId)
app.put('/update/:id',updateProductId)
app.delete('/delete/:id',deleteProductId)

module.exports = app