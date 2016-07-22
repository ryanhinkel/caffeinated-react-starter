{ render } = require 'react-dom'
root = require './components/root'
createActions = require './actions/actions'

# App contains a reference to
# a global state object and
# and a collection of actions
# to change that state.

app = {}
app.store = {};
app.refresh = () ->
  ui = root(app)
  element = document.getElementById 'app'
  render ui, element

app.actions = createActions app, app.refresh

app.refresh()
