var CategoryList = React.createClass({
  // propTypes: {
  //   name: React.PropTypes.string
  // },

  getInitialState: function() {
    return {
      data: {categories: []}
    }
  },

  render: function() {
    return (
      <ul className="CategoryList">
        {this.props.categories.map(function(name){
          return <li key={name}>{name}</li>
        })
      }
          {Object.keys(categories).map(function(name) {
            return <div>Category: {categories[name]}</div>;
          })}
      </ul>
    );
  }
});
