const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);
connection.connect();


const getProductReviews = function(productId, callback) {
	connection.query(`SELECT * FROM product_reviews WHERE product_id=${productId}`, (error, results, fields) => {
    if (error){
      callback(null, error)
    } else {
      callback(results, null)
    }
  });
}

const getStoreReviews = function(productId, callback) {
	connection.query(`SELECT * FROM store_reviews WHERE product_id=${productId}`, (error, results, fields) => {
    if (error){
      callback(null, error)
    } else {
      callback(results, null)
    }
  });
}

module.exports = {
	getProductReviews,
	getStoreReviews
};
