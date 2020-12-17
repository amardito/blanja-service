const app = require('express').Router();

const { tokenCheck, levelCheck } = require('../helper/middleware/authorization');
const {
  newProduct, getProductId, updateProductId, deleteProductId, getAllProducts, getAllByStore,
} = require('../controller/product');
const { multiUpload } = require('../helper/middleware/upload');

app.post('/product/create', tokenCheck, levelCheck, multiUpload, newProduct);
app.get('/product/:id', getProductId);
app.get('/products', getAllProducts);
app.put('/product/update/:id', tokenCheck, levelCheck, multiUpload, updateProductId);
app.delete('/product/delete/:id', tokenCheck, levelCheck, deleteProductId);
app.post('/myproducts', getAllByStore);

module.exports = app;
