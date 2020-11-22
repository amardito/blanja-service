const express = require('express')
const app = express.Router()
const {newProduct} = require('../controller/product/command/product')

app.post('/create', newProduct)

module.exports = app