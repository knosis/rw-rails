var WinItemWrapper = React.createClass({
  render: function() {
    return <div className="winblock debug">{this.props.data}</div>;
  }
});

var WinsList = React.createClass({
  propTypes: {
    title: React.PropTypes.string
  },

  getInitialState: function() {
    return {
      data: {categories: []}
    }
  },

  render: function() {
    return (
      <div className="WinList debug">
         {this.props.categories.map(function(cat){
      return <WinItemWrapper key={cat.id} data={cat.id.wins} />;
    })}
      </div>
    );
  }
});
