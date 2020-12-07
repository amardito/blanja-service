const express = require('express');

const app = express.Router();
const {
  newProduct, getProductId, updateProductId, deleteProductId, getAllProducts,
} = require('../controller/product');

app.post('/product/create', newProduct);
app.get('/product/:id', getProductId);
app.get('/products', getAllProducts);
app.put('/product/update/:id', updateProductId);
app.delete('/product/delete/:id', deleteProductId);

module.exports = app;
