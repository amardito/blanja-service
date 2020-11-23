const { getByName, getByCategory } = require('../model/search');

const search = async (req, res) => {
  let {
    name, category, sortby, sort,
  } = req.query;
  const searchName = `%${name}%`;
  const searchCategory = `%${category}%`;

  if (sortby == 'name') {
    sortby = 'product_name';
  } else if (sortby == 'latest') {
    sortby = 'created_at';
  }

  if (name != undefined && category != undefined) {
    res.status(500).json({
      status: 'error',
      message: 'u cant find more column at a same time',
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

module.exports = {
  search,
};
