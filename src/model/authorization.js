const jwt = require('jsonwebtoken');
const { db } = require('../config/dbConnect');

const login = (payload) => new Promise((resolve, reject) => {
  const qStr = 'SELECT token FROM token_blacklist WHERE token = ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      if (data[0] !== undefined) {
        resolve({ code: 409 });
      } else {
        const privateKey = process.env.KEY;
        jwt.verify(payload, privateKey, (error, jwtData) => {
          if (error) {
            resolve({ code: 401 });
          } else {
            resolve({ code: 202, data: jwtData });
          }
        });
      }
    } else {
      reject(err);
    }
  });
});

module.exports = {
  login,
};
