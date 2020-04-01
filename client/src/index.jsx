/* eslint-disable import/extensions */
import React from 'react';
import ReactDOM from 'react-dom';
import ProductReviews from './ProductReviews.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      productId: '1',
      storeId: '1',
    };
  }

  componentDidMount() {
    const productId = window.location.pathname.split('/')[2];
    this.setState({ productId });
    this.setState({ storeId: productId });
  }

  render() {
    const { productId, storeId } = this.state;
    return <ul><ProductReviews productId={productId} storeId={storeId} /></ul>;
  }
}

export default App;

ReactDOM.render(
  <App />,
  document.getElementById('root'),
);
