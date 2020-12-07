const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const { db } = require('../config/dbConnect');

const register = (payload, levelID) => new Promise((resolve, reject) => {
  const qStr = 'SELECT u.user_email FROM users AS u WHERE u.user_email = ?';
  let payloadData = {};
  db.query(qStr, payload.email, (err, data) => {
    payloadData = { cekemail: data };
    if (err) {
      reject(err);
    } else if (data[0] === undefined) {
      const UserID = Date.now();
      const saltRounds = 10;

      const payloads = {
        id_user: UserID,
        user_name: payload.username,
        user_email: payload.email,
        user_password: '',
        user_level: levelID,
      };

      bcrypt.genSalt(saltRounds, (errSalt, salt) => {
        if (errSalt) {
          reject(errSalt);
        } else {
          bcrypt.hash(payload.password, salt, (error, hasedPass) => {
            if (!error) {
              const newPayloads = { ...payloads, user_password: hasedPass };

              const qs = 'INSERT INTO users SET  ?';
              db.query(qs, newPayloads, (e) => {
                if (e) {
                  reject(e);
                } else {
                  payloadData = { ...payloadData, data: payload };
                  resolve(payloadData);
                }
              });
            } else {
              reject(error);
            }
          });
        }
      });
    } else {
      resolve(payloadData);
    }
  });
});

const login = (payload) => new Promise((resolve, reject) => {
  const qStr = 'SELECT u.user_password FROM users AS u WHERE u.user_email = ?';
  let payloadData = {};

  db.query(qStr, payload.email, (err, data) => {
    payloadData = { cekemail: data };
    if (err) {
      reject(err);
    } else if (data[0] === undefined) {
      resolve(payloadData);
    } else {
      bcrypt.compare(payload.password, data[0].user_password, (error, result) => {
        payloadData = { ...payloadData, cekpassword: result };
        if (error) {
          reject(error);
        }
        if (!result) {
          resolve(payloadData);
        } else {
          const key = process.env.KEY;
          const token = jwt.sign({ email: payload.email }, key); // what key uses for?
          payloadData = { ...payloadData, token: { token } };
          resolve(payloadData);
        }
      });
    }
  });
});

module.exports = {
  register,
  login,
};
