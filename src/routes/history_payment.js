const express = require('express');

const app = express.Router();
const { newPayment } = require('../controller/payment');

app.post('/create', newPayment);

module.exports = app;
