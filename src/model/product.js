const fs = require('fs');
const { db } = require('../config/dbConnect');

const createProduct = (payload) => new Promise((resolve, reject) => {
  const productID = Date.now();
  const modelProduct = {
    id_product: productID,
    product_name: payload.product_name,
    product_by: payload.product_by,
    product_price: payload.product_price,
    product_qty: payload.product_qty,
    category_id: payload.category_id,
    product_desc: payload.product_desc,
    product_sold: payload.product_sold,
    product_img: payload.product_img,
    created_at: new Date(Date.now()),
    updated_at: new Date(Date.now()),
  };

  const qStrProduct = 'INSERT INTO products SET ?';
  db.query(qStrProduct, modelProduct, (err) => {
    if (err) {
      reject(err);
    }
  });

  const qStrSize = 'INSERT INTO product_size SET ?';
  payload.size_id.split(',').map((val) => {
    const payloads = {
      product_id: productID,
      size_id: val,
    };
    return db.query(qStrSize, payloads, (err) => {
      if (err) {
        reject(err);
      }
    });
  });

  const qStrColor = 'INSERT INTO product_color SET ?';
  payload.color_id.split(',').map((val) => {
    const payloads = {
      product_id: productID,
      color_id: val,
    };
    return db.query(qStrColor, payloads, (err) => {
      if (err) {
        reject(err);
      }
    });
  });
  resolve(payload);
});

const getProduct = (payload) => new Promise((resolve, reject) => {
  let payloadData = {};

  let qStr = `
  SELECT
      p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty,
      cat.category_name, p.category_id, p.product_desc, p.product_sold, p.product_img, p.created_at,
      p.updated_at
  FROM
    products AS p
  JOIN category AS cat
  ON
    cat.id_category = p.category_id
  WHERE
    p.id_product = ?`;

  db.query(qStr, payload, (err, data) => {
    if (!err) {
      const [product] = data;
      payloadData = { product };
    } else {
      reject(err);
    }
  });

  qStr = `
  SELECT ps.size_id, s.size
  FROM
    product_size AS ps
  JOIN size AS s
  ON
    s.id_size = ps.size_id
  WHERE
    ps.product_id = ?`;

  db.query(qStr, payload, (err, data) => {
    if (!err) {
      payloadData = { ...payloadData, size: data };
    } else {
      reject(err);
    }
  });

  qStr = `
  SELECT pc.color_id, c.color
  FROM
    product_color AS pc
  JOIN color AS c
  ON
    c.id_color = pc.color_id
  WHERE
    pc.product_id = ?`;

  db.query(qStr, payload, (err, data) => {
    if (!err) {
      payloadData = { ...payloadData, color: data };
      resolve(payloadData);
    } else {
      reject(err);
    }
  });
});

const updateProduct = (payload, idParams) => new Promise((resolve, reject) => {
  let payloads = {
    product_name: payload.product_name,
    product_by: payload.product_by,
    product_price: payload.product_price,
    product_qty: payload.product_qty,
    category_id: payload.category_id,
    product_desc: payload.product_desc,
  };

  if (payload.product_img !== undefined) {
    db.query(`SELECT product_img FROM products WHERE id_product = ${idParams}`, (err, data) => {
      if (err) {
        reject(err);
      } else {
        data[0].product_img.split(',').map((arrImg) => fs.unlink(`public${arrImg}`, (error) => {
          if (error !== null) {
            reject(error);
          }
        }));
      }
    });
    payloads = {
      ...payloads,
      product_img: payload.product_img,
      updated_at: new Date(Date.now()),
    };
  } else {
    payloads = {
      ...payloads,
      updated_at: new Date(Date.now()),
    };
  }
  const qStr = `UPDATE products SET ? WHERE id_product = ${idParams}`;
  db.query(qStr, payloads, (err, data) => {
    if (!err) {
      if (payload.product_img !== undefined) {
        resolve({ ...payload, product_img: payload.product_img.split(','), data });
      } resolve({ data });
    } else {
      reject(err);
    }
  });

  if (payload.size_id !== undefined) {
    const currSize = 'DELETE FROM product_size WHERE product_id = ?';
    db.query(currSize, idParams, (err) => {
      if (!err) {
        const qStrSize = 'INSERT INTO product_size SET ?';
        payload.size_id.split(',').map((val) => {
          const sizeModel = {
            product_id: idParams,
            size_id: val,
          };
          return db.query(qStrSize, sizeModel, (error) => {
            if (error) {
              reject(error);
            }
          });
        });
      } else {
        reject(err);
      }
    });
  }

  if (payload.color_id !== undefined) {
    const currColor = 'DELETE FROM product_color WHERE product_id = ?';
    db.query(currColor, idParams, (err) => {
      if (!err) {
        const qStrColor = 'INSERT INTO product_color SET ?';
        payload.color_id.split(',').map((val) => {
          const colorModel = {
            product_id: idParams,
            color_id: val,
          };
          return db.query(qStrColor, colorModel, (error) => {
            if (error) {
              reject(error);
            }
          });
        });
      } else {
        reject(err);
      }
    });
  }
});

const deleteProduct = (payload) => new Promise((resolve, reject) => {
  db.query(`SELECT product_img FROM products WHERE id_product = ${payload}`, (err, data) => {
    if (err) {
      reject(err);
    } else {
      data[0].product_img.split(',').map((arrImg) => fs.unlink(`public${arrImg}`, (error) => {
        if (error !== null) {
          reject(error);
        }
      }));
    }
  });

  const qStr = 'DELETE FROM products WHERE id_product = ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);

      const currColor = 'DELETE FROM product_color WHERE product_id = ?';
      db.query(currColor, payload);

      const currSize = 'DELETE FROM product_size WHERE product_id = ?';
      db.query(currSize, payload);
    } else {
      reject(err);
    }
  });
});

const getAll = ([limit, page], sortBy, sort) => new Promise((resolve, reject) => {
  const limitHandler = limit || 15;
  const pageHandler = (page - 1) * limitHandler || 0;
  const handlerSort = sort || 'ASC';

  if (page < 1) {
    const err = { errQuery: `cann't show page = ${page}` };
    reject(err);
  }

  let qStr = `SELECT 
  p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty, 
  c.category_name, p.product_desc, p.product_sold, p.product_img, p.created_at 
  FROM products AS p JOIN category AS c ON c.id_category = p.category_id`;

  let totalPage;
  db.query('SELECT COUNT(id_product) AS num FROM products', (err, data) => {
    if (err) {
      reject(err);
    } else {
      totalPage = Math.ceil(data[0].num / limitHandler);
    }
  });

  if (sortBy) {
    qStr = `${qStr} ORDER BY ${sortBy} ${handlerSort} LIMIT ? OFFSET ?`;
  } else {
    qStr += ' LIMIT ? OFFSET ?';
  }

  db.query(qStr, [limitHandler, pageHandler], (err, data) => {
    const findPage = pageHandler / limitHandler;
    let nextpage = findPage + 2;
    if (nextpage <= totalPage) {
      nextpage = `${process.env.PATH_ENDPOINT}/products?page=${findPage + 2}`;
    } else { nextpage = null; }

    const payloadData = {
      values: data,
      pageInfo: {
        page: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/products?page=1` : `${process.env.PATH_ENDPOINT}/products?page=${findPage + 1}`,
        nextPage: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/products?page=2` : nextpage,
        prevPage: pageHandler === 0 ? null : `${process.env.PATH_ENDPOINT}/products?page=${findPage}`,
        totalPage,
      },
    };
    if (!err) {
      resolve(payloadData);
    } else {
      reject(err);
    }
  });
});

const getByStore = (payload, [limit, page]) => new Promise((resolve, reject) => {
  const limitHandler = limit || 10;
  const pageHandler = (page - 1) * limitHandler || 0;

  let totalPage;
  db.query(`SELECT COUNT(id_product) AS num FROM products WHERE product_by LIKE '%${payload.store}%'`, (err, data) => {
    if (err) {
      reject(err);
    } else {
      totalPage = Math.ceil(data[0].num / limitHandler);
    }
  });

  if (page < 1) {
    const err = { errQuery: `cann't show page = ${page}` };
    reject(err);
  }

  const qStr = `SELECT p.id_product, p.product_name, p.product_price, p.product_qty FROM products AS p WHERE p.product_by LIKE '%${payload.store}%'`;
  db.query(qStr, (err, data) => {
    const findPage = pageHandler / limitHandler;
    let nextpage = findPage + 2;
    if (nextpage <= totalPage) {
      nextpage = `${process.env.PATH_ENDPOINT}/myproducts?page=${findPage + 2}`;
    } else { nextpage = null; }

    const payloadData = {
      values: data,
      pageInfo: {
        page: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/myproducts?page=1` : `${process.env.PATH_ENDPOINT}/myproducts?page=${findPage + 1}`,
        nextPage: pageHandler === 0 ? `${process.env.PATH_ENDPOINT}/myproducts?page=2` : nextpage,
        prevPage: pageHandler === 0 ? null : `${process.env.PATH_ENDPOINT}/myproducts?page=${findPage}`,
        totalPage,
      },
    };
    if (!err) {
      resolve(payloadData);
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
  getByStore,
};
