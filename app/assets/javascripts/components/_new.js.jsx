var New = React.createClass({
  render() {
    return (
      <div className=>
        <h1>Add your gas and electric usage here</h1>
        <input ref="kwh" placeholder="Kwh per month" />
    		<input ref="gas" placeholder="Gas per month" />
    		<input ref="address" placeholder="Address" />
    		<button className="btn btn-primary" onClick={this.handleClick}>Submit Usage</button>
      </div>
    )
  }
});

