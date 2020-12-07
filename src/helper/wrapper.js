module.exports = {
  success: (res, message, data, status) => {
    res.status(status).json({
      status,
      message,
      data,
    });
  },
  error: (res, message, error, status) => {
    res.status(status).json({
      status,
      message,
      error,
    });
  },
};
