{ render } = require 'react-dom'
root = require './components/root'

refresh = (props) ->
  ui = root(props)
  element = document.getElementById 'app'
  render ui, element

refresh({ message: "Hello" })
