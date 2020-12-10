const {
  createProduct, getProduct, updateProduct, deleteProduct, getAll,
} = require('../model/product');
const wrapper = require('../helper/wrapper');

const newProduct = async (req, res) => {
  let payload = req.body;

  if (req.pathFile === '') {
    wrapper.error(res, 'you need upload image file at least 1', 'required field', 400);
  }
  payload = {
    ...payload,
    product_img: req.pathFile,
  };

  await createProduct(payload).then((data) => {
    const payloadData = {
      ...data,
      product_img: req.pathFile.split(','),
    };
    wrapper.success(res, 'sucess created new product', payloadData, 201);
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const getProductId = async (req, res) => {
  const { id } = req.params;

  await getProduct(id).then((data) => {
    if (data.product !== undefined) {
      const payloadData = {
        ...data,
        product: {
          ...data.product,
          product_img: data.product.product_img.split(','),
        },
      };
      wrapper.success(res, 'found a data', payloadData, 200);
    } else {
      wrapper.error(res, 'data not found', 'might be wrong id', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const updateProductId = async (req, res) => {
  const { id } = req.params;
  let payload = req.body;

  if (req.pathFile !== '') {
    payload = {
      ...payload,
      product_img: req.pathFile,
    };
  }

  await updateProduct(payload, id).then((data) => {
    if (data.data.affectedRows) {
      wrapper.success(res, 'sucess update product', { id, payload }, 201);
    } else {
      wrapper.error(res, 'cant find id', 'id\'s not found', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const deleteProductId = async (req, res) => {
  const { id } = req.params;

  await deleteProduct(id).then((data) => {
    if (data.affectedRows) {
      wrapper.success(res, 'sucess delete product', { id }, 200);
    } else {
      wrapper.error(res, 'cant find id', 'id\'s not found', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const getAllProducts = async (req, res) => {
  const { sort, page, limit } = req.query;
  let { sortby } = req.query;

  if (sortby === 'name') {
    sortby = 'product_name';
  } else if (sortby === 'latest') {
    sortby = 'created_at';
  } else if (sortby === 'price') {
    sortby = 'product_price';
  } else if (sortby === 'popular') {
    sortby = 'product_sold';
  }
  await getAll([Number(limit), Number(page)], sortby, sort).then((data) => {
    if (data.values.length) {
      wrapper.success(res, 'found a data', data, 200);
    } else {
      wrapper.error(res, 'data not found', 'add some products', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

module.exports = {
  newProduct,
  getProductId,
  getAllProducts,
  updateProductId,
  deleteProductId,
};
