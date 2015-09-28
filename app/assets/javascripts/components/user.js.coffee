@User = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.user.name
      React.DOM.td null, @props.user.email
      React.DOM.td null, @props.user.description