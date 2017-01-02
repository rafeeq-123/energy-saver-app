var All = React.createClass({
 getInitialState: function(){
    return {
       data: {
          savers: [] 
       }
     };  
  },

  render() {
    var savers = this.props.data.savers.map((saver) => {
      return (
        <div key={saver.id}>
          <h3>{saver.kwh}</h3>
          <p><strong>Gas:</strong> {saver.gas}</p>
          <button onClick={this.handleDelete}>Delete</button>
        </div>
      )
    });

    return (
      <div>
        {savers}
      </div>
    )
  }
});
