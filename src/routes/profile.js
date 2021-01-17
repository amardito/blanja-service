const app = require('express').Router();
const {
  upgradeProfile, newAddress, userAddress, updateAddress, deleteAddress, idAddress,
} = require('../controller/profile');

app.put('/profile/upgrade', upgradeProfile);
app.post('/profile/address', newAddress);
app.post('/profile/useraddress', userAddress);
app.get('/profile/address/:id', idAddress);
app.put('/profile/address/:id', updateAddress);
app.delete('/profile/address/:id', deleteAddress);

module.exports = app;
