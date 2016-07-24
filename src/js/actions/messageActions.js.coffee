assign = require 'lodash/assign'

module.exports = {
  key: "message"
  initial: "Hello World!"
  actions:
    setMessage: (store, payload) ->
      assign store, { message: payload }
}
