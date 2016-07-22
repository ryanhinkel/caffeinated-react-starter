{ createClass, createFactory } = require('react')
{ div, input } = require './elements'

root = createClass
  handleInput: (e) ->
    @props.actions.setMessage(e.target.value)

  render: () ->
    div({},
      div({}, @props.store.message),
      input({ onChange: @handleInput, value: @props.store.message }))

module.exports = createFactory(root)
