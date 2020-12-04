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
  const qStr = 'SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.product_sold, p.product_img, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.id_product = ?';
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

const getAll = (sortBy, sort) => new Promise((resolve, reject) => {
  let qStr = '';

  if (sortBy) {
    qStr = `SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.product_sold, p.product_img, p.created_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id ORDER BY ${sortBy} ${sort}`;
  } else {
    qStr = 'SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.product_sold, p.product_img, p.created_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id ORDER BY created_at DESC';
  }

  db.query(qStr, (err, data) => {
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
  getAll,
  updateProduct,
  deleteProduct,
};
