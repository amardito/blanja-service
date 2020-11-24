const express = require('express');

const app = express.Router();
const { newPayment } = require('../controller/history_payment/command/payment');

app.post('/create', newPayment);

module.exports = app;
