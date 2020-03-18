const express = require('express');
const bodyParser = require('body-parser');
const path = require('path')
const db = require('../db');

const app = express();
const PORT = 1234;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + '/../client/dist/'));

app.get('/', (req, res) => {
	res.render('index')
});

app.get('/:id/product/reviews', (req, res) => {
	let productId = req.params.id;
	db.getProductReviews(productId, (result, error) => {
		if (error) {
			console.log(error)
		} else {
			res.send(result)
		}
	})
});

app.get('/:id/store/reviews', (req, res) => {
	let storeId = req.params.id;
	db.getStoreReviews(storeId, (result, error) => {
		if (error) {
			console.log(error)
		} else {
			res.send(result)
		}
	})

});


app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
