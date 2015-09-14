 var CategoryWinButton = React.createClass({
    render: function() {
      return <button className="debug btn btn-default pull-right">{this.props.data}</button>;
    }
  });

var ListItemWrapper = React.createClass({
  render: function() {
    return <div className="catblock debug">{this.props.data}</div>;
  }
});

var CategoryList = React.createClass({
  propTypes: {
    name: React.PropTypes.string
  },

  getInitialState: function() {
    return {
      data: {categories: []}
    }
  },

  render: function() {
    return (
      <div className="CategoryList debug">
         {this.props.categories.map(function(cat){
      return <ListItemWrapper key={cat.id} data={cat.win} />;
    })}
      </div>
    );
  }
});

React.render(
  <CategoryList />,
  document.body
);
