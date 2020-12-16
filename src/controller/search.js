const {
  getBy, getCategory, getSize, getColor,
} = require('../model/search');
const wrapper = require('../helper/wrapper');

const search = async (req, res) => {
  const {
    name, category, size, color, sort, page, limit,
  } = req.query;
  let { sortby } = req.query;
  const searchName = `%${name}%`;
  const url = req.query;

  if (sortby === 'name') {
    sortby = 'product_name';
  } else if (sortby === 'latest') {
    sortby = 'created_at';
  } else if (sortby === 'price') {
    sortby = 'product_price';
  } else if (sortby === 'popular') {
    sortby = 'product_sold';
  }

  await getBy([searchName, category, size, color, Number(limit), Number(page)], sortby, sort, url)
    .then((data) => {
      if (data.values.length) {
        wrapper.success(res, 'found a data', data, 200);
      } else {
        wrapper.error(res, 'data not found', 'try another key word', 404);
      }
    }).catch((err) => {
      wrapper.error(res, 'bad request', err, 400);
    });
};

const getAllCategory = async (req, res) => {
  await getCategory().then((data) => {
    if (data.length) {
      wrapper.success(res, 'found a data', data, 200);
    } else {
      wrapper.error(res, 'data not found', 'might be wrong id', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const getAllSize = async (req, res) => {
  await getSize().then((data) => {
    if (data.length) {
      wrapper.success(res, 'found a data', data, 200);
    } else {
      wrapper.error(res, 'data not found', 'might be wrong id', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

const getAllColor = async (req, res) => {
  await getColor().then((data) => {
    if (data.length) {
      wrapper.success(res, 'found a data', data, 200);
    } else {
      wrapper.error(res, 'data not found', 'might be wrong id', 404);
    }
  }).catch((err) => {
    wrapper.error(res, 'bad request', err, 400);
  });
};

module.exports = {
  search,
  getAllCategory,
  getAllSize,
  getAllColor,
};
