const app = require('express').Router();
const wrapper = require('../helper/wrapper');

app.all('*', (req, res) => {
  wrapper.error(res, 'endpoint not found, u must read postman documentation', 'WRONG ENDPOINT', 404);
});

module.exports = app;
