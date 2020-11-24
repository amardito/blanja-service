const { createHistoryPay } = require('../model/payment');

const newPayment = async (req, res) => {
  const payload = req;
  const paymentID = Date.now();

  const payloads = {

    id_payment: paymentID,
    ...payload.body,
    created_at: new Date(Date.now()),

  };
  await createHistoryPay(payloads).then(() => {
    const resObject = {
      message: 'success create new product',
      data: { id: paymentID, ...payload.body, created_at: new Date(Date.now()) },
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

module.exports = {
  newPayment,
};
