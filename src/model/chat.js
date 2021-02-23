const { db } = require('../config/dbConnect');

const getChatCustomer = (payload) => new Promise((resolve, reject) => {
  const qStr = `
  SELECT * 
  FROM chat 
  WHERE senderID = ${payload.userID} AND receiverID = ${payload.receiverID} 
  OR senderID = ${payload.receiverID} AND receiverID = ${payload.userID}`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

const getChatSeller = (payload) => new Promise((resolve, reject) => {
  const qStr = `
  SELECT * FROM chat 
  WHERE receiverID = ${payload} 
  AND time >= IFNULL((SELECT time FROM chat AS T2 WHERE T2.senderID = chat.senderID ORDER BY time DESC LIMIT 1 OFFSET 0), 0)`;
  db.query(qStr, (err, data) => {
    if (err) {
      reject(err);
    }
    resolve(data);
  });
});

module.exports = {
  getChatSeller, getChatCustomer,
};
