const { db } = require('../config/dbConnect');

const getBy = ([productName, category, size, color], sortBy, sort) => new Promise(
  (resolve, reject) => {
    let qStr;
    const qsName = `p.product_name LIKE '${productName}' AND `;
    const qsCategory = `cat.id_category LIKE ${category} AND `;
    const qsSize = `ps.size_id LIKE ${size} AND `;
    const qsColor = `pc.color_id LIKE ${color} AND`;

    if (size !== undefined && color !== undefined) {
      qStr = `
      SELECT
        p.id_product, p.product_name, p.product_by, p.product_price, 
        cat.category_name, p.product_sold, p.product_img,
        ps.size_id,
        pc.color_id
      FROM
        products AS p
      JOIN category AS cat 
      ON 
        cat.id_category = p.category_id
      JOIN product_size AS ps
      ON
        ps.product_id = p.id_product
      JOIN product_color as pc
      ON
        pc.product_id = p.id_product
      WHERE `;
    } else if (size !== undefined) {
      qStr = `
      SELECT
        p.id_product, p.product_name, p.product_by, p.product_price, 
        cat.category_name, p.product_sold, p.product_img,
        ps.size_id
      FROM
        products AS p
      JOIN category AS cat 
      ON 
        cat.id_category = p.category_id
      JOIN product_size AS ps
      ON
        ps.product_id = p.id_product
      WHERE `;
    } else if (color !== undefined) {
      qStr = `
      SELECT
        p.id_product, p.product_name, p.product_by, p.product_price, 
        cat.category_name, p.product_sold, p.product_img,
        pc.color_id
      FROM
        products AS p
      JOIN category AS cat 
      ON 
        cat.id_category = p.category_id
      JOIN product_color AS pc
      ON
        pc.product_id = p.id_product
      WHERE `;
    } else {
      qStr = `
      SELECT
        p.id_product, p.product_name, p.product_by, p.product_price, 
        cat.category_name, p.product_sold, p.product_img
      FROM
        products AS p
      JOIN category AS cat 
      ON 
        cat.id_category = p.category_id
      WHERE `;
    }

    if (productName) {
      qStr += qsName;
    }
    if (category) {
      qStr += qsCategory;
    }
    if (size) {
      qStr += qsSize;
    }
    if (color) {
      qStr += qsColor;
    }
    const checkAND = qStr.lastIndexOf('AND');
    qStr = qStr.substring(0, checkAND);

    if (sortBy) {
      qStr = `${qStr} ORDER BY ${sortBy} ${sort}`;
    }

    db.query(qStr, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  },
);

const getCategory = () => new Promise((resolve, reject) => {
  const qStr = 'SELECT * FROM category';
  db.query(qStr, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

module.exports = {
  getBy,
  getCategory,
};
