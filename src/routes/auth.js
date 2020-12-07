const app = require('express').Router();
const { registerUser, loginUser } = require('../controller/auth');

app.post('/auth/register/:idlevel', registerUser);
app.post('/auth/login', loginUser);

module.exports = app;
