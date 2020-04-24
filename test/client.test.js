/* eslint-disable import/extensions */
/* eslint-disable react/jsx-filename-extension */
/* eslint-disable import/no-unresolved */
/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import 'regenerator-runtime/runtime';
import React from 'react';
import { shallow, mount, render } from 'enzyme';
import ProductReviews from '../client/src/ProductReviews.jsx';


describe('Product Reviews Component', () => {
  // make our assertion and what we expect to happen
  it('should render without throwing an error', (done) => {
    const wrapper = shallow(<ProductReviews productId="1" storeId="1" />);
    const text = wrapper.find('#reviews');
    expect((text).exists()).toBe(true);
    done();
  });

  it('should show reviews', (done) => {
    const wrapper = shallow(<ProductReviews productId="1" storeId="1" />);
    const text = wrapper.find('#reviews > div > div.reviews');
    expect((text).exists()).toBe(true);
    done();
  });

  it('should show reviews', (done) => {
    const wrapper = shallow(<ProductReviews productId="1" storeId="1" />);
    const text = wrapper.find('#reviews > div > div.reviews');
    expect((text).exists()).toBe(true);
    done();
  });

  it('should have store reviews', (done) => {
    const wrapper = shallow(<ProductReviews productId="1" storeId="1" />);
    const text = wrapper.find('.store-reviews-num');
    expect((text).exists()).toBe(true);
    done();
  });

});
