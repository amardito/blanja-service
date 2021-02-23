const { getChatSeller, getChatCustomer } = require('../model/chat');
const wrapper = require('../helper/wrapper');

const sellerChat = async (req, res) => {
  getChatSeller(req.params.id).then((data) => {
    wrapper.success(res, 'Success get history chat', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get history chat', e, 400);
  });
};

const customerChat = async (req, res) => {
  getChatCustomer(req.query).then((data) => {
    wrapper.success(res, 'Success get history chat', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get history chat', e, 400);
  });
};

module.exports = {
  customerChat,
  sellerChat,
};
