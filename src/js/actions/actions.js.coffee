assign = require 'lodash/assign'

actions = {
  setMessage: (store, payload) ->
    console.log(payload)
    assign store, { message: payload }
}

# Export createActions fn
module.exports = (props, refresh) ->
  for key, fn of actions
    actions[key] = (payload) ->
      props.store = fn(props.store, payload)
      refresh()

  return actions
