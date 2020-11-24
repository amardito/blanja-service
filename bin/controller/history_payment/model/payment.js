const { db } = require('../../../../config/dbConnect');

const createHistoryPay = (payload) => new Promise((resolve, reject) => {
  const qStr = 'INSERT INTO history_payment SET ?';
  db.query(qStr, payload, (err, data) => {
    if (!err) {
      resolve(data);
    } else {
      reject(err);
    }
  });
});

module.exports = {
  createHistoryPay,
};
