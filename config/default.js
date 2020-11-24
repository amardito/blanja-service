require('dotenv').config();

module.exports = {
  pathProductEndpoint: process.env.PATH_PRODUCT_ENDPOINT,
  pathSearchEndpoint: process.env.PATH_SEARCH_ENDPOINT,
  pathHistoryPayEndpoint: process.env.PATH_HISTORYPAY_ENDPOINT,
  ports: process.env.PORT,
  dbHost: process.env.mysql_host,
  dbUser: process.env.mysql_user,
  dbPass: process.env.mysql_password,
  dbName: process.env.mysql_database,
};
