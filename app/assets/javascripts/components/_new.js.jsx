var New = React.createClass({
	

	handleClick() {
		var kwh = this.refs.kwh.value;
    var gas = this.refs.gas.value;
    var address = this.refs.address.value;

  $.ajax({
    url: '/savers',
    type: 'POST',
    data: { saver: { kwh: kwh, gas: gas, address: address } },
    success: (response) => {
      console.log('it worked!', response);
    }
  });
},
  render() {
    return (
      <div>
        <h1>Add your gas and electric usage here</h1>
        <input ref="kwh" placeholder="Kwh per month" />
    		<input ref="gas" placeholder="Gas per month" />
    		<input ref="address" placeholder="Address" />
    		<button className="btn btn-primary" onClick={this.handleClick}>Submit Usage</button>
      </div>
    )
  }
});

