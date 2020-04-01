/* eslint-disable import/extensions */
/* eslint-disable import/no-named-as-default-member */
import React, { useState, useLayoutEffect } from 'react';
import PropTypes from 'prop-types';
import axios from 'axios';
import User from './User.jsx';


const ProductReviews = (props) => {
  const [reviews, setReviews] = useState([]);
  const [productReviewsAverage, setProductReviewsAverage] = useState(0);
  const [storeReviewsAverage, setStoreReviewsAverage] = useState(0);
  const [reviewType, setReviewType] = useState('storeReviews');

  const getProductReviewsAverage = (productId) => {
    axios.get(`/product/reviews/${productId}/average`)
      .then((res) => {
        setProductReviewsAverage(res.data[0]['AVG(star_rating)']);
      });
  };

  const getStoreReviewsAverage = (productId) => {
    axios.get(`/store/reviews/${productId}/average`)
      .then((res) => {
        setStoreReviewsAverage(res.data[0]['AVG(star_rating)']);
      });
  };

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

  useLayoutEffect(() => {
    getProductReviews(props.productId);
    getProductReviewsAverage(props.productId);
    getStoreReviewsAverage(props.storeId);
  }, []);


  return (
    <div id="reviews">
      <div>
        <div>
          <p>Shop Rating</p>
          <p />
        </div>
        <div>
          <p>Total shop reviews</p>
          <p />
        </div>
      </div>
      <div>
        <button type="button" onClick={handleClick} id="product-reviews-button">
          Reviews for this item
          {' '}
          <span>{productReviewsAverage}</span>
        </button>
        <button type="button" onClick={handleClick} id="store-reviews-button">
          Reviews for this shop
          {' '}
          <span>{storeReviewsAverage}</span>
        </button>
        {reviews.map((val) => (
          <div key={val.id}>
            <User userId={val.user_id} />
            <div>{val.text}</div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ProductReviews;

ProductReviews.propTypes = {
  productId: PropTypes.string.isRequired,
  storeId: PropTypes.string.isRequired,
};
