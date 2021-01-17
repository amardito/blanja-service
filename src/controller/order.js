const { createNewOrder, getUserOrder, getIdOrder } = require('../model/order');
const wrapper = require('../helper/wrapper');

const newOrder = async (req, res) => {
  await createNewOrder(req.body).then((data) => {
    wrapper.success(res, 'Success create new order', data, 201);
  }).catch((err) => {
    wrapper.error(res, 'Failed create new order', err, 400);
  });
};

const userOrder = async (req, res) => {
  getUserOrder(req.body).then((data) => {
    wrapper.success(res, 'Success get order by user', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get order by user', e, 400);
  });
};

const getOrder = async (req, res) => {
  getIdOrder(req.params.id).then((data) => {
    wrapper.success(res, 'Success get order', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get order', e, 400);
  });
};

module.exports = {
  newOrder,
  userOrder,
  getOrder,
};
