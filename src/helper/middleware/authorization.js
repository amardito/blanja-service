const wrapper = require('../wrapper');
const { login } = require('../../model/middleware/authorization');

const tokenCheck = (req, res, next) => {
  let token = req.header('authorization');
  if (token !== '' && token !== undefined) {
    token = token.split(' ');
    login(token[1]).then((data) => {
      if (data.code === 409) {
        wrapper.error(res, 'token already composed', 'token has destroyed', 409);
      }
      if (data.code === 401) {
        wrapper.error(res, 'This token is not match like signature', 'Invalid Token', 401);
      }
      if (data.code === 202) {
        req.level = data.data.level;
        next();
      }
    }).catch((err) => {
      wrapper.error(res, 'bad request', err, 400);
    });
  } else {
    wrapper.error(res, 'You need login first before access this feature', 'token not found', 401);
  }
};

const levelCheck = (req, res, next) => {
  const { level } = req;
  if (level !== 'seller') {
    wrapper.error(res, 'your level hasn\'t permisson to access this feature', 'Restirected Level', 403);
  } else {
    next();
  }
};

module.exports = {
  tokenCheck,
  levelCheck,
};
