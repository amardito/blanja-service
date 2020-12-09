const app = require('express').Router();
const { registerUser, loginUser, logoutUser } = require('../controller/authentication');

app.post('/auth/register/:idlevel', registerUser);
app.post('/auth/login', loginUser);
app.post('/auth/logout', logoutUser);

module.exports = app;
