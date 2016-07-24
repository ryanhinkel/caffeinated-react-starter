assign = require 'lodash/assign'

module.exports = {
  key: "message"
  initial: "Hello World!"
  actions:
    setMessage: (state, payload) ->
      payload
}
