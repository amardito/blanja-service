const express = require('express').Router
const app = new express()

app.post('/create', (req,res) => {
  res.status(404).json({
    status : 'false',
    message : 'Endpoint not found'
  })
})

module.exports = app