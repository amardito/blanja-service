const { db } = require('../config/dbConnect');

const upgradeLevel = (payload) => new Promise((resolve, reject) => {
  const payloads = {
    store: payload.store,
    phone: payload.phone,
    user_email: payload.email,
    level_id: 2,
  };
  const qStr = `UPDATE users SET ? WHERE user_email LIKE '%${payload.email}%'`;
  db.query(qStr, payloads, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const createAddress = (payload) => new Promise((resolve, reject) => {
  const payloads = {
    id_address: Date.now(),
    user_email: payload.email,
    address_name: payload.name,
    recip_name: payload.recip,
    address_street: payload.street,
    address_city: payload.city,
    address_postcode: payload.postcode,
    recip_phone: payload.phone,
  };
  const qStr = 'INSERT INTO address SET ?';
  db.query(qStr, payloads, (err) => {
    if (err) {
      reject(err);
    }
    resolve(payload);
  });
});

const getUserAddress = (payload) => new Promise((resolve, reject) => {
  const qStr = `SELECT * FROM address WHERE user_email like '%${payload.email}%'`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

const getIdAddress = (param) => new Promise((resolve, reject) => {
  const qStr = `SELECT * FROM address WHERE id_address = ${param}`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

const updateUserAddress = (param, payload) => new Promise((resolve, reject) => {
  const qStr = `UPDATE address SET ? WHERE id_address = ${param}`;
  db.query(qStr, payload, (err) => {
    if (err) {
      reject(err);
    }
    resolve(payload);
  });
});

const deleteUserAddress = (param) => new Promise((resolve, reject) => {
  const qStr = `DELETE FROM address WHERE id_address = ${param}`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve([param, data]);
  });
});

module.exports = {
  upgradeLevel, createAddress, getUserAddress, updateUserAddress, deleteUserAddress, getIdAddress,
};
