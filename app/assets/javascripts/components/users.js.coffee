@Users = React.createClass
  getInitialState: ->
    users: @props.data

  getDefaultProps: ->
    users: []

  addUser: (user) ->
    users = React.addons.update(@state.users, { $push: [user] })
    @setState users: users

  deleteUser: (user) ->
    index = @state.users.indexOf user
    users = React.addons.update(@state.users, { $splice: [[index, 1]] })
    @replaceState users: users

  updateUser: (user, data) ->
    index = @state.users.indexOf user
    users = React.addons.update(@state.users, { $splice: [[index, 1, data]] })
    @replaceState users: users

  render: ->
    React.DOM.div
      className: 'users'
      React.DOM.h2
        className: 'name'
        'Users'
      React.createElement UserForm, handleNewUser: @addUser
      React.DOM.hr null

      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Email'
            React.DOM.th null, 'Description'
        React.DOM.tbody null,
          for user in @state.users
            React.createElement User, key: user.id, user: user, handleDeleteUser: @deleteRecord, handleEditRecord: @updateRecord







