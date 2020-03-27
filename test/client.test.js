/* eslint-disable import/extensions */
/* eslint-disable react/jsx-filename-extension */
/* eslint-disable import/no-unresolved */
/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import 'regenerator-runtime/runtime';
import React from 'react';
import { shallow, mount, render } from 'enzyme';
import ProductReviews from '../client/src/product_reviews.jsx';


describe('Product Reviews Component', () => {
  // make our assertion and what we expect to happen
  it('should render without throwing an error', (done) => {
    const wrapper = shallow(<ProductReviews productId="1" storeId="1" />);
    const text = wrapper.find('#reviews');
    expect((text).exists()).toBe(true);
    done();
  });
});
