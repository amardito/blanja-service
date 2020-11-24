const { db } = require('../config/dbConnect');

const createProduct = (payload) => new Promise((resolve, reject) => {
  const qStr = 'INSERT INTO products SET ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const getProduct = (payload) => new Promise((resolve, reject) => {
  const qStr = 'SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.id_product = ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const updateProduct = (payload, idParams) => new Promise((resolve, reject) => {
  const qStr = `UPDATE products SET ? WHERE id_product = ${idParams}`;
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const deleteProduct = (payload) => new Promise((resolve, reject) => {
  const qStr = 'DELETE FROM products WHERE id_product = ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

module.exports = {
  createProduct,
  getProduct,
  updateProduct,
  deleteProduct,
};
