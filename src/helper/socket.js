/* eslint-disable no-shadow */
const express = require('express');

const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const { db } = require('../config/dbConnect');

const socketConnect = (io) => {
  io.on('connection', (socket) => {
    const { id } = socket.handshake.query;
    console.log('Socket connect user ', id, socket.id);
    socket.join(id);
    socket.on('send_message', (data) => {
      // send event to receiver
      console.log('new message ', { ...data, time: new Date(data.time) });
      io.in(data.receiverID).emit('new_message', data);

      // io.to(socketId).emit('new_message', data);
      db.query('INSERT INTO chat SET ?', { ...data, time: new Date(data.time) });
    });
  });
};

module.exports = {
  io, server, app, express, socketConnect,
};
