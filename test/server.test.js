/* eslint-disable import/no-unresolved */
/* eslint-disable no-undef */
/* eslint-disable import/prefer-default-export */
import 'regenerator-runtime/runtime';

const request = require('supertest');
const app = require('../server');
// Link to your server file
const port = 4500;


describe('Test Reviews', () => {
  const server = app.listen(port);

  afterEach(() => { server.close(); });

  describe('Sample Test', () => {
    it('should test that true === true', (done) => {
      expect(true).toBe(true);
      done();
    });
  });

  describe('GET Endpoints', () => {
    test('Test getting product reviews has all keys', async (done) => {
      const response = await request(app).get('/product/reviews/1');
      expect(response.statusCode).toBe(200);
      expect(response.body[0]).toHaveProperty('id');
      expect(response.body[0]).toHaveProperty('text');
      expect(response.body[0]).toHaveProperty('dt');
      expect(response.body[0]).toHaveProperty('ts');
      expect(response.body[0]).toHaveProperty('star_rating');
      expect(response.body[0]).toHaveProperty('user_id');
      expect(response.body[0]).toHaveProperty('product_id');
      done();
    });

    test('Test getting store reviews has all keys', async (done) => {
      const response = await request(app).get('/store/reviews/1');
      expect(response.statusCode).toBe(200);
      expect(response.body[0]).toHaveProperty('id');
      expect(response.body[0]).toHaveProperty('text');
      expect(response.body[0]).toHaveProperty('star_rating');
      expect(response.body[0]).toHaveProperty('user_id');
      expect(response.body[0]).toHaveProperty('store_id');
      done();
    });

    test('Test getting users has all keys', async (done) => {
      const response = await request(app).get('/users/1');
      expect(response.statusCode).toBe(200);
      expect(response.body[0]).toHaveProperty('id');
      expect(response.body[0]).toHaveProperty('avatar');
      expect(response.body[0]).toHaveProperty('username');
      done();
    });

    test('Test getting product rating average is a number', async (done) => {
      const response = await request(app).get('/product/reviews/549504785/average');
      expect(response.statusCode).toBe(200);
      expect(response.body[0]['AVG(star_rating)']).toEqual(expect.any(Number));
      done();
    });


    test('Test getting store rating average is a number', async (done) => {
      const response = await request(app).get('/store/reviews/59/average');
      expect(response.statusCode).toBe(200);
      expect(response.body[0]['AVG(star_rating)']).toEqual(expect.any(Number));
      done();
    });
  });
});
