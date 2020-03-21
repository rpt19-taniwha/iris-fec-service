import React, { useState } from 'react';
import axios from 'axios';


var ProductReviews = (props) => {
	const [reviews, setReviews] = useState([]);

	var getProductReviews = (productId) => {
    axios.get(`/product/reviews/${productId}`)
    .then(res => {
      const productReviews = res.data;
			setReviews(productReviews);
			console.log(productReviews[0])
    });
	}
	getProductReviews(props.productId)

	return (
		reviews.map(val => {
			return <li key={val.id}>{val.text}</li>
		})
	)
}

export default ProductReviews;