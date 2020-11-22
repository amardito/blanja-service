const mySql = require('mysql')
const config = require('config');

const db = mySql.createConnection({
  host: config.get('dbHost'),
  user: config.get('dbUser'),
  password : config.get('dbPass'),
  database : config.get('dbName')
})

db.connect((err) => {
  if(err) throw err;
  console.log("succses connect to database")
})

module.exports = {
  db
}