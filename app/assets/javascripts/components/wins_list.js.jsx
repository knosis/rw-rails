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
   var catwins = this.props.categories.map(function(catwin){
       return <ListItemWrapper key={cat.id} data={catwin.id.wins} />
    });
      return (
    <div className="WinList debug">
      <div className="winblock debug">
        {catwins}
      </div>
    </div>
    )
  }
});
