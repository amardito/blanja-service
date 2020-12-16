const express = require('express');

const app = express.Router();
const {
  search, getAllCategory, getAllSize, getAllColor,
} = require('../controller/search');

app.get('/search', search);
app.get('/category', getAllCategory);
app.get('/size', getAllSize);
app.get('/color', getAllColor);

module.exports = app;
