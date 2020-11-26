require('dotenv').config();

module.exports = {
  pathEndpoint: process.env.PATH_ENDPOINT,
  ports: process.env.PORT,
  dbHost: process.env.MYSQL_HOST,
  dbUser: process.env.MYSQL_USER,
  dbPass: process.env.MYSQL_PASS,
  dbName: process.env.MYSQL_DATABASE,
};
