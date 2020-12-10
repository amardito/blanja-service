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
  const arrSize = payload.size_id.split(',');
  const sizeLen = arrSize.length;
  for (let i = 0; i < sizeLen; i += 1) {
    const payloads = {
      product_id: productID,
      size_id: arrSize[i],
    };
    db.query(qStrSize, payloads, (err) => {
      if (err) {
        reject(err);
      }
    });
  }

  const qStrColor = 'INSERT INTO product_color SET ?';
  const arrColor = payload.color_id.split(',');
  const colorLen = arrColor.length;
  for (let i = 0; i < colorLen; i += 1) {
    const payloads = {
      product_id: productID,
      color_id: arrColor[i],
    };
    db.query(qStrColor, payloads, (err) => {
      if (err) {
        reject(err);
      }
    });
  }

  resolve(payload);
});

const getProduct = (payload) => new Promise((resolve, reject) => {
  let payloadData = {};

  let qStr = `
  SELECT
      p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty,
      cat.category_name, p.product_desc, p.product_sold, p.product_img, p.created_at,
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
  const payloads = {
    product_name: payload.product_name,
    product_by: payload.product_by,
    product_price: payload.product_price,
    product_qty: payload.product_qty,
    category_id: payload.category_id,
    product_desc: payload.product_desc,
    product_img: payload.product_img,
    updated_at: new Date(Date.now()),
  };

  const qStr = `UPDATE products SET ? WHERE id_product = ${idParams}`;
  db.query(qStr, payloads, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });

  if (payload.size_id !== undefined) {
    const currSize = 'DELETE FROM product_size WHERE product_id = ?';
    db.query(currSize, idParams, (err, data) => {
      if (!err) {
        if (data.affectedRows) {
          const qStrSize = 'INSERT INTO product_size SET ?';
          const arrSize = payload.size_id.split(',');
          const sizeLen = arrSize.length;
          for (let i = 0; i < sizeLen; i += 1) {
            const sizeModel = {
              product_id: idParams,
              size_id: arrSize[i],
            };
            db.query(qStrSize, sizeModel, (error) => {
              if (error) {
                reject(error);
              }
            });
          }
        } else {
          resolve(data);
        }
      } else {
        reject(err);
      }
    });
  }

  if (payload.color_id !== undefined) {
    const currColor = 'DELETE FROM product_color WHERE product_id = ?';
    db.query(currColor, idParams, (err, data) => {
      if (!err) {
        if (data.affectedRows) {
          const qStrColor = 'INSERT INTO product_color SET ?';
          const arrColor = payload.color_id.split(',');
          const colorLen = arrColor.length;
          for (let i = 0; i < colorLen; i += 1) {
            const colorModel = {
              product_id: idParams,
              color_id: arrColor[i],
            };
            db.query(qStrColor, colorModel, (error) => {
              if (error) {
                reject(error);
              }
            });
          }
        } else {
          resolve(data);
        }
      } else {
        reject(err);
      }
    });
  }
});

const deleteProduct = (payload) => new Promise((resolve, reject) => {
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
  const limitHandler = limit || 3;
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
});

module.exports = {
  createProduct,
  getProduct,
  getAll,
  updateProduct,
  deleteProduct,
};

// const getProduct = (payload) => new Promise((resolve, reject) => {
//   const qStr = `
//   SELECT
//       p.id_product, p.product_name, p.product_by, p.product_price, p.product_qty,
//       cat.category_name,
//       p.product_desc, p.product_sold, p.product_img, p.created_at, p.updated_at,
//       ps.size_id,
//       s.size,
//       pc.color_id,
//       c.color
//   FROM
//     products AS p
//   JOIN category AS cat
//   ON
//     cat.id_category = p.category_id
//   JOIN product_size AS ps
//   ON
//     ps.product_id = p.id_product
//   JOIN size AS s
//   ON
//     s.id_size = ps.size_id
//   JOIN product_color as pc
//   ON
//     pc.product_id = p.id_product
//   JOIN color AS c
//   ON
//     c.id_color = pc.color_id
//   WHERE
//     p.id_product AND ps.product_id AND pc.product_id = ?`;

//   db.query(qStr, payload, (err, data) => {
//     if (!err) {
//       resolve(data);
//     } else {
//       reject(err);
//     }
//   });
// });
