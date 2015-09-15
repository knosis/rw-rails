

var CategoryListItem = React.createClass({
  propTypes:{
    category: React.PropTypes.object.isRequired
  },
  render: function() {
    return (
       <a className="category-wins-block link-less debug" href={"/categories/"+this.props.category.id+"/wins"}>
        <span className="debug catblock">{this.props.category.name}</span>
        </a>
    );
  }
});

var CategoryList = React.createClass({
  propTypes: {
    categories: React.PropTypes.array.isRequired,
    name: React.PropTypes.string,
  },

  getInitialState: function() {
    return {categories: []};
  },

  render: function() {
    var categories = this.props.categories.map(function(category){
       return <CategoryListItem key={category.id} category={category} />
    });
    return (
      <div>
      <div className="CategoryList clearfix category-container debug">
          {categories}
      </div>
      </div>
    );
  }
});

