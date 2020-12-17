const { db } = require('../config/dbConnect');

const getBy = ([productName, category, size, color, limit, page], sortBy, sort, url) => new Promise(
  (resolve, reject) => {
    let qStr;
    let qCstr;
    let urlPage = '';
    const qsName = `p.product_name LIKE '${productName}' AND `;
    const qsCategory = `cat.id_category LIKE ${category} AND `;
    const qsSize = `ps.size_id REGEXP '${size}' AND `;
    const qsColor = `pc.color_id REGEXP '${color}' AND`;
    const limitHandler = limit || 15;
    const pageHandler = (page - 1) * limitHandler || 0;
    const handlerSort = sort || 'ASC';

    if (page < 1) {
      const err = { errQuery: `cann't show page = ${page}` };
      reject(err);
    }

    const Str = `
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

    qStr = `SELECT
    p.id_product, p.product_name, p.product_by, p.product_price, 
    cat.category_name, p.category_id, p.product_sold, p.product_img ${Str}`;

    qCstr = `SELECT COUNT(id_product) AS num ${Str}`;

    if (productName !== '%undefined%') {
      qStr += qsName;
      qCstr += qsName;
      urlPage += `name=${url.name}`;
    }
    if (category !== undefined) {
      qStr += qsCategory;
      qCstr += qsCategory;
      urlPage += `&category=${url.category}`;
    }
    if (size !== undefined) {
      qStr += qsSize;
      qCstr += qsSize;
      urlPage += `&size=${url.size}`;
    }
    if (color !== undefined) {
      qStr += qsColor;
      qCstr += qsColor;
      urlPage += `&color=${url.color}`;
    }

    let checkAND = qStr.lastIndexOf('AND');
    qStr = qStr.substring(0, checkAND);
    checkAND = qCstr.lastIndexOf('AND');
    qCstr = qCstr.substring(0, checkAND);

    qCstr += ' GROUP BY ps.product_id, pc.product_id';
    let totalPage;
    db.query(qCstr, (err, data) => {
      if (err) {
        reject(err);
      } else {
        totalPage = Math.ceil(data.length / limitHandler);
      }
    });

    qStr += ' GROUP BY ps.product_id, pc.product_id';
    if (sortBy) {
      qStr = `${qStr} ORDER BY ${sortBy} ${handlerSort} LIMIT ? OFFSET ?`;
      urlPage += `&sortby=${url.sortby}`;
    } else {
      qStr += ' LIMIT ? OFFSET ?';
    }

    db.query(qStr, [limitHandler, pageHandler], (err, data) => {
      const findPage = pageHandler / limitHandler;
      let nextpage = findPage + 2;
      if (nextpage <= totalPage) {
        nextpage = `${process.env.PATH_ENDPOINT}/search?${urlPage}&page=${findPage + 2}`;
      } else { nextpage = null; }

      const payloadData = {
        values: data,
        pageInfo: {
          page: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/search?${urlPage}&page=1` : `${process.env.PATH_ENDPOINT}/search?${urlPage}&page=${findPage + 1}`,
          nextPage: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/search?${urlPage}&page=2` : nextpage,
          prevPage: pageHandler === 0 ? null : `${process.env.PATH_ENDPOINT}/search?${urlPage}&page=${findPage}`,
          totalPage,
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

const getSize = () => new Promise((resolve, reject) => {
  const qStr = 'SELECT * FROM size';
  db.query(qStr, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

const getColor = () => new Promise((resolve, reject) => {
  const qStr = 'SELECT * FROM color';
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
  getSize,
  getColor,
};
