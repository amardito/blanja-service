const { db } = require('../config/dbConnect');

const getBy = ([productName, category, size, color, limit, page], sortBy, sort) => new Promise(
  (resolve, reject) => {
    let qStr;
    const qsName = `p.product_name LIKE '${productName}' AND `;
    const qsCategory = `cat.id_category LIKE ${category} AND `;
    const qsSize = `ps.size_id REGEXP '${size}' AND `;
    const qsColor = `pc.color_id REGEXP '${color}' AND`;
    const limitHandler = limit || 3;
    const pageHandler = (page - 1) * limitHandler || 0;
    const handlerSort = sort || 'ASC';

    if (page < 1) {
      const err = { errQuery: `cann't show page = ${page}` };
      reject(err);
    }

    qStr = `
    SELECT
        p.id_product, p.product_name, p.product_by, p.product_price, 
        cat.category_name, p.product_sold, p.product_img
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
      WHERE
      `;

    if (productName !== '%undefined%') {
      qStr += qsName;
    }
    if (category !== undefined) {
      qStr += qsCategory;
    }
    if (size !== undefined) {
      qStr += qsSize;
    }
    if (color !== undefined) {
      qStr += qsColor;
    }

    const checkAND = qStr.lastIndexOf('AND');
    qStr = qStr.substring(0, checkAND);

    qStr += ' GROUP BY ps.product_id, pc.product_id';
    if (sortBy) {
      qStr = `${qStr} ORDER BY ${sortBy} ${handlerSort} LIMIT ? OFFSET ?`;
    } else {
      qStr += ' LIMIT ? OFFSET ?';
    }

    db.query(qStr, [limitHandler, pageHandler], (err, data) => {
      const payloadData = {
        values: data,
        pageInfo: {
          page: pageHandler === 0 ? 1 : (pageHandler / limitHandler) + 1,
          nextPage: pageHandler === 0 ? 2 : (pageHandler / limitHandler) + 2,
          prevPage: pageHandler === 0 ? null : (pageHandler / limitHandler),
          limit: limitHandler,
        },
      };
      if (!err) {
        resolve(payloadData);
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
