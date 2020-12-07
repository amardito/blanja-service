const {
  createProduct, getProduct, updateProduct, deleteProduct, getAll,
} = require('../model/product');
const wrapper = require('../helper/wrapper');

const newProduct = async (req, res) => {
  const payload = req.body;

  await createProduct(payload).then((data) => {
    wrapper.success(res, 'sucess created new product', data, 201);
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const getProductId = async (req, res) => {
  const { id } = req.params;

  await getProduct(id).then((data) => {
    if (data.length) {
      wrapper.success(res, 'found a data', data, 200);
    } else {
      wrapper.error(res, 'data not found', 'might be wrong id', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const updateProductId = async (req, res) => {
  const { id } = req.params;
  const payload = req.body;

  await updateProduct(payload, id).then((data) => {
    if (data) {
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
    const resObject = {
      message: 'success delete product',
      data: id,
    };
    if (data.affectedRows) {
      res.status(201).json(resObject);
    } else {
      res.status(404).json({
        message: 'Data not Found',
      });
    }
  })
    .catch((err) => {
      res.status(400).json({
        status: 'error bad request',
        message: err.sqlMessage,
        error: err,
      });
    });
};

const getAllProducts = async (req, res) => {
  const { sort } = req.query;
  let { sortby } = req.query;

  if (sortby === 'name') {
    sortby = 'product_name';
  } else if (sortby === 'latest') {
    sortby = 'created_at';
  } else if (sortby === 'popular') {
    sortby = 'product_sold';
  }

  await getAll(sortby, sort).then((data) => {
    if (data.length) {
      res.status(200).json({
        message: 'success get data',
        data,
      });
    } else {
      res.status(404).json({
        message: 'Data not Found',
      });
    }
  })
    .catch((err) => {
      res.status(400).json({
        status: 'error bad request',
        message: err.sqlMessage,
        error: err,
      });
    });
};

module.exports = {
  newProduct,
  getProductId,
  getAllProducts,
  updateProductId,
  deleteProductId,
};
