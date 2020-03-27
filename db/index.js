/* eslint-disable func-names */
const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);
connection.connect();


const getProductReviews = function (productId, callback) {
  connection.query(`SELECT * FROM product_reviews WHERE product_id=${productId}`, (error, results) => {
    if (error) {
      callback(null, error);
    } else {
      callback(results, null);
    }
  });
};

const getStoreReviews = function (storeId, callback) {
  connection.query(`SELECT * FROM store_reviews WHERE store_id=${storeId}`, (error, results) => {
    if (error) {
      callback(null, error);
    } else {
      callback(results, null);
    }
  });
};

const getUser = function (userId, callback) {
  connection.query(`SELECT * FROM users WHERE id=${userId}`, (error, results) => {
    if (error) {
      callback(null, error);
    } else {
      callback(results, null);
    }
  });
};

module.exports = {
  getProductReviews,
  getStoreReviews,
  getUser,
  connection,
};
