const express = require('express')
const logger = require('morgan')
const config = require('config')

const server = require('./bin/app/server')
const product = require('./bin/app/product')
const app = express()

app.use(logger("dev"))
app.use(express.urlencoded({extended:false}))
app.use(express.json())

app.use(config.get('pathProductEndpoint'), product)
app.use('/', server)

app.listen(config.get('ports'), () => {
  console.log(`running on http://localhost:${config.get('ports')}`)
})