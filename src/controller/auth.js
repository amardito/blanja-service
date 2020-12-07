const { register, login } = require('../model/auth');
const wrapper = require('../helper/wrapper');

const registerUser = async (req, res) => {
  const payload = req.body;
  const { idlevel } = req.params;

  await register(payload, idlevel).then((data) => {
    if (data.cekemail[0] === undefined) {
      wrapper.success(res, 'sucess created new account', data.data, 201);
    } else {
      wrapper.success(res, 'failed create new account', 'email already exists', 409);
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
        wrapper.success(res, 'login success', data.token, 200);
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

module.exports = {
  registerUser,
  loginUser,
};
