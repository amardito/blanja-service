const express = require('express');

const app = express.Router();
const {
  newProduct, getProductId, updateProductId, deleteProductId,
} = require('../controller/product');

app.post('/product/create', newProduct);
app.get('/product/:id', getProductId);
app.put('/product/update/:id', updateProductId);
app.delete('/product/delete/:id', deleteProductId);

module.exports = app;
