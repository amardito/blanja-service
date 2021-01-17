const express = require('express');

const app = express.Router();
const { newOrder, userOrder, getOrder } = require('../controller/order');

app.post('/order', newOrder);
app.post('/userorder', userOrder);
app.get('/order/:id', getOrder);

module.exports = app;
