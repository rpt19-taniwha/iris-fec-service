import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
  constructor(props) {
    super(props);
	}

	render(){
		return <h1>Launching reviews</h1>
	}
}

export default App;

ReactDOM.render(
  <App/>,
  document.getElementById('root')
);