import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import ProductReviews from './product_reviews.jsx'

class App extends React.Component {

  constructor(props){
    super(props)
    this.state = {
      productId: null,
      storeId: null
    }
  }

  componentDidMount() {
    let productId = window.location.pathname.split('/')[2]
    this.setState({productId})
  }

  render() {
    return <ul><ProductReviews productId={this.state.productId} storeId={this.state.storeId}/></ul>;
  }

}

export default App;

ReactDOM.render(
  <App />,
  document.getElementById('root'),
);
