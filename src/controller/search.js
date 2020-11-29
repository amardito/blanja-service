const {
  getByName, getByCategory, getBy, getCategory,
} = require('../model/search');

const search = async (req, res) => {
  const {
    name, category, sort,
  } = req.query;
  let { sortby } = req.query;
  const searchName = `%${name}%`;
  const searchCategory = `%${category}%`;

  if (sortby === 'name') {
    sortby = 'product_name';
  } else if (sortby === 'latest') {
    sortby = 'created_at';
  }

  if (name !== undefined && category !== undefined) {
    await getBy([searchName, searchCategory], sortby, sort).then((data) => {
      const resObject = {
        status: 200,
        data,
      };
      res.json(resObject);
    })
      .catch((err) => {
        res.status(500).json({
          status: 'error',
          message: 'wrong query',
          error: err,
        });
      });
  } else {
    if (name) {
      await getByName(searchName, sortby, sort).then((data) => {
        const resObject = {
          status: 200,
          data,
        };
        res.json(resObject);
      })
        .catch((err) => {
          res.status(500).json({
            status: 'error',
            message: 'wrong query',
            error: err.sql,
          });
        });
    }

    if (category) {
      await getByCategory(searchCategory, sortby, sort).then((data) => {
        const resObject = {
          status: 200,
          data,
        };
        res.json(resObject);
      })
        .catch((err) => {
          res.status(500).json({
            status: 'error',
            message: 'wrong query',
            error: err.sql,
          });
        });
    }
  }
};

const getAllCategory = async (req, res) => {
  await getCategory().then((data) => {
    const resObject = {
      status: 200,
      data,
    };
    res.json(resObject);
  })
    .catch((err) => {
      res.status(500).json({
        status: 'error',
        message: 'wrong query',
        error: err.sql,
      });
    });
};

module.exports = {
  search,
  getAllCategory,
};
