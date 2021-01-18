const { db } = require('../config/dbConnect');

const createNewOrder = (arrPayload) => new Promise((resolve, reject) => {
  const id = Date.now();
  arrPayload.map((payload) => {
    const payloads = {
      id_payment: id,
      user_email: payload.user_email,
      product_id: payload.product_id,
      qty: payload.qty,
      color: payload.color,
      size: payload.size,
      price: payload.price,
      created_at: new Date(id),
      address_id: payload.address_id,
      payment: payload.payment,
      status: 'Delivering',
      track_id: `BLNJ-${id}`,
    };
    const qStr = 'INSERT INTO history_payment SET ?';
    return db.query(qStr, payloads, (err) => {
      if (err) {
        reject(err);
      }
    });
  });
  resolve({
    id_payment: id,
    product: arrPayload,
    created_at: new Date(id),
  });
});

const getUserOrder = (payload) => new Promise((resolve, reject) => {
  const qStr = `SELECT * FROM history_payment WHERE user_email like '%${payload.email}%'`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

const getIdOrder = (payload) => new Promise((resolve, reject) => {
  const qStr = `
  SELECT * 
  FROM history_payment AS hp 
  JOIN products AS p ON
  p.id_product = hp.product_id
  JOIN address AS a ON
  a.id_address = hp.address_id
  WHERE hp.id_payment = ${payload}`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

module.exports = {
  createNewOrder,
  getUserOrder,
  getIdOrder,
};
