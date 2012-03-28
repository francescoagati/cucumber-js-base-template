(->
  World = undefined
  zombie = undefined
  zombie = require("zombie")
  World = World = (callback) ->
    @browser = new zombie.Browser()
    @visit = (url, callback) ->
      @browser.visit url, callback

    callback()

  exports.World = World
).call this