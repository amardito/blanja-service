const app = require('express').Router();
const {
  upgradeProfile,
  newAddress,
  userAddress,
  updateAddress,
  deleteAddress,
  idAddress,
  changeUserPassword,
  getUserInfo,
  changeUserName,
} = require('../controller/profile');

app.post('/profile/userinfo', getUserInfo);
app.put('/profile/upgrade', upgradeProfile);
app.put('/profile/cusername', changeUserName);
app.put('/profile/cpassword', changeUserPassword);
app.post('/profile/address', newAddress);
app.post('/profile/useraddress', userAddress);
app.get('/profile/address/:id', idAddress);
app.put('/profile/address/:id', updateAddress);
app.delete('/profile/address/:id', deleteAddress);

module.exports = app;
