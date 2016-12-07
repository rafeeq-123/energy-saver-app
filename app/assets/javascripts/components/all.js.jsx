var All = React.createClass({
	  var savers = this.prop.savers.map((saver) => {
      return (
        <div key={saver.id}>
        <p><strong> kWh:</strong></p>
          <h3>{saver.kwh}</h3>
          <p><strong>Gas:</strong> {saver.gas}</p>
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

