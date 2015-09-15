var WinForm = React.createClass({
    propTypes: {
    title: React.PropTypes.string,
    content: React.PropTypes.string,
    score: React.PropTypes.number
  },

  handleFormSubmit: function(form) {
    form = {obj: obj};

  componentDidMount: function() {
    $.ajax({
    type: 'POST',
    url: this.props.url,
    data: data,
    headers: {'X-CSRFToken': $.cookie('csrftoken')},
    success: function(data) {
        //I do this so the new added link will be on top of the array
        var newLinks = [data].concat(links);
        this.setState({data: newLinks});
      }.bind(this)
    });
  },
  },

  addObj: function() {
    var url = this.refs.url.getDOMNode().value.trim();
    this.props.onSubmit(url);
  },

  render: function() {
    return (
        <div className="win-details">
            <form onSubmit={this.submit}>
                <input type="text" name="title" ref="title" placeholder="What happened?" />
                <input type="text" name="content" ref="content" placeholder="Details..." />
                <input type="button" onClick={this.addObj} value="Save" />
            </form>
        </div>
    )
    $.get(this.props.source, function(result) {
      var lastGist = result[0];
      if (this.isMounted()) {
        this.setState({
          username: lastGist.owner.login,
          lastGistUrl: lastGist.html_url
        });
      }
    }.bind(this));
  },
