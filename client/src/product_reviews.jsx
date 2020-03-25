import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';
import axios from 'axios';


const ProductReviews = (props) => {
  const [reviews, setReviews] = useState([]);
  const [reviewType, setReviewType] = useState('storeReviews');


  const getProductReviews = (productId) => {
    axios.get(`/product/reviews/${productId}`)
      .then((res) => {
        const productReviews = res.data;
        setReviews(productReviews);
        setReviewType('productReviews');
      });
  };

  const getStoreReviews = (storeId) => {
    axios.get(`/store/reviews/${storeId}`)
      .then((res) => {
        const storeReviews = res.data;
        setReviews(storeReviews);
        setReviewType('storeReviews');
      });
  };

  const handleClick = (e) => {
    if (e.target.id === 'product-reviews-button' && reviewType === 'storeReviews') {
      getProductReviews(props.productId);
    }
    if (e.target.id === 'store-reviews-button' && reviewType === 'productReviews') {
      getStoreReviews(props.storeId);
    }
  };

  useEffect(() => {
    getProductReviews(props.productId);
  }, []);


  return (
    <div id="reviews">
      <div>
        <div>
          <p>Shop Rating</p>
          <p>4/5</p>
        </div>
        <div>
          <p>Total shop reviews</p>
          <p>4/5</p>
        </div>
      </div>
      <div>
        <button type="button" onClick={handleClick} id="product-reviews-button">Reviews for this item</button>
        <button type="button" onClick={handleClick} id="store-reviews-button">Reviews for this shop</button>
        {reviews.map((val) => <li key={val.id}>{val.text}</li>)}
      </div>
    </div>
  );
};

export default ProductReviews;

ProductReviews.propTypes = {
  productId: PropTypes.string.isRequired,
  storeId: PropTypes.string.isRequired,
};
