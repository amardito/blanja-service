const express = require('express')
const app = express.Router()

app.all('*', (req,res) => {
  res.status(200).json({
    status: 'ok',
    message: 'u found create endpoint'
  })
})

module.exports = app