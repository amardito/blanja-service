const app = require('express').Router();

const { customerChat, sellerChat } = require('../controller/chat');

app.get('/getChat?', customerChat);
app.get('/chatSeller/:id', sellerChat);

module.exports = app;
