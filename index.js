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




app.get("/products", (req,res) =>{

  const queryString = ''

  // db.query(queryString, (err, data) => {
  //   if (err) throw err;
  //   res.json(data)
  // })

  const getAllProduct = new Promise((resolve,reject) => {
    db.query(queryString, (err, data) => {
      if(!err) {
        resolve(data)
      }else{
        reject(err)
      }
    })
  }) 
  
  getAllProduct.then((data) => {
    res.json(data);
  }).catch((err) => {
    res.json(err)
  })
    
})

app.post("/products",(req, res) => {
  const { body } = req;
  const postProduct = new Promise((resolve, reject) => {
    const queryStr = "INSERT INTO products ?"
    db.query(queryStr, body, (err, data) => {
      if(!err) {
        resolve(data)
      }else{
        reject(err)
      }
    })
  })
  postProduct.then((data)=>{
    res.json(data)
  })
})