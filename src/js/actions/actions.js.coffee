actionModules = [
  require('./messageActions') ]

# Export createActions fn
module.exports = (app, refresh) ->
  resultActions = {}
  for { key, initial, actions } in actionModules
    app.store[key] = initial
    for key, fn of actions
      resultActions[key] = (payload) ->
        app.store = fn(app.store, payload)
        refresh()

  return resultActions
