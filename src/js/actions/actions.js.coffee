actionModules = [
  require('./messageActions') ]

# Export createActions fn
module.exports = (store, refresh) ->
  resultActions = {}
  for { key, initial, actions } in actionModules
    store[key] = initial
    for key, fn of actions
      resultActions[key] = (payload) ->
        store[key] = fn(store[key], payload)
        refresh()

  return resultActions
