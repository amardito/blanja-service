const multer = require('multer');
const path = require('path');
const wrapper = require('../wrapper');

const multerStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, './public/images');
  },
  filename: (req, file, cb) => {
    const getRandomInt = (max) => Math.floor(Math.random() * Math.floor(max));
    const id = `${getRandomInt(100)}-${Date.now()}`;
    const formatName = `${id}-blanjaImg-${file.fieldname}${path.extname(file.originalname)}`;
    cb(null, formatName);
  },
});

const upload = multer({
  storage: multerStorage,
  limits: 4 * 1000 * 1000,
});

const singleUpload = (req, res, next) => {
  const uploadSingle = upload.single('image');
  uploadSingle(req, res, (err) => {
    if (err) {
      wrapper.error(res, 'Multiple upload error', err, 400);
    } else {
      if (req.files[0] === undefined) {
        wrapper.error(res, 'you need upload image file', 'required field', 400);
      }
      next();
    }
  });
};

const multiUpload = (req, res, next) => {
  const uploadMultiple = upload.array('product_img', 5);
  uploadMultiple(req, res, (err) => {
    if (err) {
      wrapper.error(res, 'Multiple upload error', err, 400);
    } else {
      if (req.files[0] === undefined) {
        wrapper.error(res, 'you need upload image file at least 1', 'required field', 400);
      }
      const pathFile = req.files.map((data) => `/images/${data.filename}`);
      req.pathFile = pathFile.join(',');
      next();
    }
  });
};

module.exports = {
  multiUpload,
  singleUpload,
};
