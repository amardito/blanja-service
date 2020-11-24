const Express = require('express').Router;

const app = new Express();

app.post('*', (req, res) => {
  res.status(404).json({
    status: 'false',
    message: 'Endpoint not found',
  });
});

module.exports = app;
