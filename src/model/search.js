const { db } = require('../../config/dbConnect');

const getByName = (payload, sortBy, sort) => new Promise((resolve, reject) => {
  let qStr = '';

  if (sortBy) {
    qStr = `SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.product_name LIKE ? ORDER BY ${sortBy} ${sort}`;
  } else {
    qStr = 'SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.product_name LIKE ?';
  }
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const getByCategory = (payload, sortBy, sort) => new Promise((resolve, reject) => {
  let qStr = '';

  if (sortBy) {
    qStr = `SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE c.category_name LIKE ? ORDER BY ${sortBy} ${sort}`;
  } else {
    qStr = 'SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE c.category_name LIKE ?';
  }
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const getBy = ([payload1, payload2], sortBy, sort) => new Promise((resolve, reject) => {
  let qStr = '';

  if (sortBy) {
    qStr = `SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.product_name LIKE '${payload1}' AND c.category_name LIKE '${payload2}' ORDER BY ${sortBy} ${sort}`;
  } else {
    qStr = `SELECT p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, c.category_name, p.product_desc, p.created_at, p.updated_at FROM products AS p JOIN category AS c ON c.id_category = p.category_id WHERE p.product_name LIKE '${payload1}' AND c.category_name LIKE '${payload2}'`;
  }
  db.query(qStr, [payload1, payload2], (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

module.exports = {
  getByName,
  getByCategory,
  getBy,
};
