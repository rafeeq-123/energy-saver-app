var New = React.createClass({
	
	handleClick() {
		var kwh = this.refs.kwh.value;
    var gas = this.refs.gas.value;
    var address = this.refs.address.value;

  $.ajax({
    url: "/savers",
    type: "POST",
    data: { saver: { kwh: kwh, gas: gas, address: address } },
    success: (response) => {
      console.log("Success!", response);
    }
  });
},
  render() {
    return (
      <div className="container text-center">
        <u><h1>Add your usage here</h1></u>
        <div><input className="form-control form-control-lg form-control-success" ref="kwh"
          placeholder=" Monthly Kilowatthour"/></div>
    		<div><input className="form-control form-control-lg form-control-success" ref="gas" 
          placeholder="Gas per month" /></div>
    		<div><input className="form-control form-control-lg form-control-success" ref="address" 
          placeholder="Address" /></div>
    		<div><button className="btn btn-primary" 
          onClick={this.handleClick}>Submit Usage</button></div>
      </div>
    )
  }
});