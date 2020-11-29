const {
  createProduct, getProduct, updateProduct, deleteProduct, getAll,
} = require('../model/product');

const newProduct = async (req, res) => {
  const payload = req;
  const productID = Date.now();

  const payloads = {

    id_product: productID,
    ...payload.body,
    created_at: new Date(Date.now()),
    updated_at: new Date(Date.now()),

  };
  await createProduct(payloads).then(() => {
    const resObject = {
      message: 'success create new product',
      data: { id: productID, ...payload.body, created_at: new Date(Date.now()) },
    };
    res.status(201).json(resObject);
  })
    .catch((err) => {
      res.status(400).json({
        status: 'error bad request',
        message: err.sqlMessage,
        error: err.sql,
      });
    });
};

const getProductId = async (req, res) => {
  const { id } = req.params;

  await getProduct(id).then((data) => {
    if (data.length) {
      res.status(200).json(data[0]);
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
        error: err.sql,
      });
    });
};

const updateProductId = async (req, res) => {
  const { id } = req.params;
  const payload = req;
  const payloads = {
    ...payload.body,
    updated_at: new Date(Date.now()),
  };
  await updateProduct(payloads, id).then((data) => {
    const resObject = {
      message: 'success update product',
      data: { id, ...payload.body, updated_at: new Date(Date.now()) },
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
        error: err.sql,
      });
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
        error: err.sql,
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
        error: err.sql,
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
