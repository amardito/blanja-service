const { register, login, logout } = require('../model/authentication');
const wrapper = require('../helper/wrapper');

const registerUser = async (req, res) => {
  const payload = req.body;
  const { idlevel } = req.params;

  await register(payload, idlevel).then((data) => {
    if (data.cekemail[0] === undefined) {
      wrapper.success(res, 'sucess created new account', data.data, 201);
    } else {
      wrapper.error(res, 'failed create new account', 'email already exists', 409);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const loginUser = async (req, res) => {
  const payload = req.body;

  await login(payload).then((data) => {
    if (data.cekemail[0] !== undefined) {
      if (data.cekpassword) {
        wrapper.success(res, 'login success', { payload: { email: payload.email, level: data.cekemail[0].level }, token: data.token }, 200);
      } else {
        wrapper.error(res, 'login failed', 'wrong password', 401);
      }
    } else {
      wrapper.error(res, "email doesn't exists", 'email not found', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const logoutUser = async (req, res) => {
  const payload = req.header('authorization').split(' ')[1];
  await logout({ token: payload }).then(() => {
    wrapper.success(res, 'success to logout', 'tokan has stored to blacklist', 201);
  }).catch((e) => {
    wrapper.error(res, 'bad request', e, 400);
  });
};

module.exports = {
  registerUser,
  loginUser,
  logoutUser,
};
