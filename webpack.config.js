const path = require('path');

const SRC_DIR = path.join(__dirname, '/client/src');
const DIST_DIR = path.join(__dirname, '/client/dist');

module.exports = {
  mode: 'production',
  entry: {
    app: `${SRC_DIR}/index.jsx`,
  },
  output: {
    filename: 'bundle.js',
    path: DIST_DIR,
  },
  module: {
    rules: [
      {
        test: /\.js(x)?$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['@babel/preset-react'],
        },
      },
      {
        test: /\.css$/i,
        exclude: /node_modules/,
        use: ['style-loader', 'css-loader'],
      },
      {
        test: /\.scss$/i,
        exclude: /node_modules/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },
};
