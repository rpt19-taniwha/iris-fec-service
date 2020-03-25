import "core-js/stable";
import "regenerator-runtime/runtime";
import React from 'react';
import { shallow, mount, render } from 'enzyme';
import ProductReviews from '../client/src/product_reviews.jsx';


describe('Product Reviews Component', () => {

 // make our assertion and what we expect to happen
 it('should render without throwing an error', (done) => {
   expect(shallow(<ProductReviews />).exists()).toBe(true);
   done()
 })
})