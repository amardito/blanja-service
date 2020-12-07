const express = require('express');

const app = express.Router();
const { search, getAllCategory } = require('../controller/search');

app.get('/search', search);
app.get('/category', getAllCategory);

module.exports = app;
