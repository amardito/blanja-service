const {
  register, login, logout, login2,
} = require('../model/authentication');
const wrapper = require('../helper/wrapper');

const registerUser = async (req, res) => {
  const payload = req.body;

  await register(payload).then((data) => {
    if (data.cekemail[0] === undefined) {
      wrapper.success(res, 'sucess created new account', data.data, 201);
    } else {
      wrapper.error(res, 'failed create new account', 'email already exists', 409);
    }
  }).catch((err) => {
    if (err.code === 'ER_DUP_ENTRY') {
      wrapper.error(res, 'bad request', err.sqlMessage, 409);
    } else {
      wrapper.error(res, 'bad request', err, 400);
    }
  });
};

const loginUser = async (req, res) => {
  const payload = req.body;
  if (payload.level !== 2) {
    await login(payload).then((data) => {
      if (data.cekemail[0] !== undefined) {
        if (data.cekpassword) {
          wrapper.success(res, 'login success', {
            email: payload.email,
            username: data.cekemail[0].user_name,
            level: data.cekemail[0].level,
            store: data.cekemail[0].store,
            login_as: 'costumer',
            token: data.token,
          }, 200);
        } else {
          wrapper.error(res, 'login failed', 'wrong password', 401);
        }
      } else {
        wrapper.error(res, "email doesn't exists", 'email not found', 404);
      }
    }).catch((err) => {
      wrapper.error(res, 'bad request', err, 400);
    });
  } else {
    await login2(payload).then((data) => {
      if (data.cekemail[0] !== undefined) {
        if (data.ceklevel === 401) {
          wrapper.error(res, 'login failed', 'Your account not registred as seller', 401);
        } else if (data.cekpassword) {
          wrapper.success(res, 'login success', {
            email: payload.email,
            username: data.cekemail[0].user_name,
            level: data.cekemail[0].level,
            store: data.cekemail[0].store,
            login_as: 'seller',
            token: data.token,
          }, 200);
        } else {
          wrapper.error(res, 'login failed', 'wrong password', 401);
        }
      } else {
        wrapper.error(res, "email doesn't exists", 'email not found', 404);
      }
    }).catch((err) => {
      wrapper.error(res, 'bad request', err, 400);
    });
  }
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
