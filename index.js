const express = require('express');
const logger = require('morgan');
const config = require('config');

const server = require('./src/routes/server');
const product = require('./src/routes/product');
const search = require('./src/routes/search');
const historyPay = require('./src/routes/history_payment');

const app = express();

app.use(logger('dev'));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use(config.get('pathEndpoint'), product);
app.use(config.get('pathEndpoint'), search);
app.use(config.get('pathEndpoint'), historyPay);
app.use('/', server);

app.listen(config.get('ports'), () => {
  console.log(`running on http://localhost:${config.get('ports')}`);
});
