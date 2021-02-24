const wrapper = require('../helper/wrapper');
const {
  upgradeLevel,
  createAddress,
  getUserAddress,
  updateUserAddress,
  deleteUserAddress,
  getIdAddress,
  changePassword,
  changeUsername,
  getUser,
} = require('../model/profile');

const upgradeProfile = async (req, res) => {
  upgradeLevel(req.body).then(() => {
    wrapper.success(res, 'succes upgrade', 'grant permisson login seller level', 200);
  }).catch((e) => {
    if (e.code === 'ER_DUP_ENTRY') {
      wrapper.error(res, 'Conflict Data', `name store for '${req.body.store}' has already taken`, 409);
    }
  });
};

const changeUserPassword = async (req, res) => {
  changePassword(req.body).then((data) => {
    wrapper.success(res, data[0], data[1], data[2]);
  }).catch((e) => {
    wrapper.error(res, 'Failed change password', e, 400);
  });
};

const changeUserName = async (req, res) => {
  changeUsername(req.body).then(() => {
    wrapper.success(res, 'Success change', 'successfully change username', 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed change username', e, 400);
  });
};

const getUserInfo = async (req, res) => {
  getUser(req.body).then((data) => {
    wrapper.success(res, 'Success get user info', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get user info', e, 400);
  });
};

const newAddress = async (req, res) => {
  createAddress(req.body).then((data) => {
    wrapper.success(res, 'Success created new address', data, 201);
  }).catch((e) => {
    wrapper.error(res, 'Failed create new address', e, 400);
  });
};

const userAddress = async (req, res) => {
  getUserAddress(req.body).then((data) => {
    wrapper.success(res, 'Success get address', data, 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get address', e, 400);
  });
};

const idAddress = async (req, res) => {
  getIdAddress(req.params.id).then((data) => {
    if (data[0] === undefined) {
      wrapper.error(res, 'Failed get address', 'Wrong ID address or not found', 404);
    }
    wrapper.success(res, 'Success get address', data[0], 200);
  }).catch((e) => {
    wrapper.error(res, 'Failed get address', e, 400);
  });
};

const updateAddress = async (req, res) => {
  updateUserAddress(req.params.id, req.body).then((data) => {
    wrapper.success(res, 'Success update address', data, 201);
  }).catch((e) => {
    wrapper.error(res, 'Failed update address', e, 400);
  });
};

const deleteAddress = async (req, res) => {
  deleteUserAddress(req.params.id).then((data) => {
    if (data[1].affectedRows === 0) {
      wrapper.error(res, 'Failed delete address', 'ID not found', 404);
    }
    wrapper.success(res, 'Success delete address', { idAddress: data[0] }, 201);
  }).catch((e) => {
    wrapper.error(res, 'Failed delete address', e, 400);
  });
};

module.exports = {
  upgradeProfile,
  changeUserPassword,
  newAddress,
  userAddress,
  idAddress,
  updateAddress,
  deleteAddress,
  changeUserName,
  getUserInfo,
};
