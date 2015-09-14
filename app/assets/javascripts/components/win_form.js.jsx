var WinForm = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    content: React.PropTypes.string,
    score: React.PropTypes.number
  },

  render: function() {
    return (
      <div>
        <div>Title: {this.props.title}</div>
        <div>Content: {this.props.content}</div>
        <div>Score: {this.props.score}</div>
      </div>
    );
  }
});
