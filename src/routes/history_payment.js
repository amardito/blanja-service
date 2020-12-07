const express = require('express');

const app = express.Router();
const { newPayment } = require('../controller/payment');

app.post('/historypayment/create', newPayment);

module.exports = app;
