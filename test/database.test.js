// const getStoreReviews = require('../server/index.js');
/* eslint-disable import/no-unresolved */
/* eslint-disable no-undef */
/* eslint-disable import/prefer-default-export */

import 'regenerator-runtime/runtime';
const db = require('../db/index.js');
// var mock;
// mock = sinon.mock(require('mysql'))

describe('Test Reviews Database', () => {
  describe('Sample Test', () => {
    it('should test that true === true', (done) => {
      expect(true).toBe(true);
      done();
    });
  });

  describe('Getting products reviews', () => {
    it('should test getting products reviews to return reviews', async (done) => {
      db.getProductReviews('549504785', (error, result) => {
        expect(typeof result).toBe('object');
        done();
      });
    });
  });

  describe('Getting store reviews', () => {
    it('should test getting store reviews to return reviews', async (done) => {
      db.getStoreReviews('59', (error, result) => {
        expect(typeof result).toBe('object');
        done();
      });
    });
  });
})
