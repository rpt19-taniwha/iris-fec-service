import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      view: 'lines'
    }
	}
	render(){
		return <h1>Hello World</h1>
	}
}