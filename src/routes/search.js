const express = require('express');

const app = express.Router();
const { search } = require('../controller/search');

app.get('/search', search);

module.exports = app;
