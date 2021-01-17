const express = require('express');
const logger = require('morgan');
const cors = require('cors');
const bp = require('body-parser');
require('dotenv').config();

const server = require('./src/routes/server');
const product = require('./src/routes/product');
const search = require('./src/routes/search');
const order = require('./src/routes/order');
const auth = require('./src/routes/authentication');
const profile = require('./src/routes/profile');

const {
  PATH_ENDPOINT, PORT,
} = process.env;

const app = express();

app.use(express.static('public'));
app.use(cors());
app.use(bp.json());
app.use(express.urlencoded({ extended: false }));
app.use(logger('dev'));

app.use(PATH_ENDPOINT, product);
app.use(PATH_ENDPOINT, search);
app.use(PATH_ENDPOINT, order);
app.use(PATH_ENDPOINT, auth);
app.use(PATH_ENDPOINT, profile);

app.use('/', server);

app.listen(PORT, () => {
  console.log(`running on http://localhost:${PORT}`);
});
