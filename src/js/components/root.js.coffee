{ createClass, createFactory } = require('react')
{ div } = require './elements'

root = createClass
  render: () ->
    div({}, @props.message)

module.exports = createFactory(root)
