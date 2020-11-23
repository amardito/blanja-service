const express = require('express')
const app = express.Router()
const {search} = require('../controller/search/command/search')

app.get('/',search)
app.get('*', (req,res) => {
  res.status(500).json({
    status : "error",
    message : "need valid request query"
  })
})

module.exports = app