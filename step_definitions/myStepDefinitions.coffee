myStepDefinitionsWrapper = ->
  
  @World = require("../support/world.coffee").World
  assert = require("assert")

  @Given /^a json named "([^"]*)" with$/, (name, value, callback) ->
    @current_name=name
    @[@current_name]=eval("(#{value});")
    callback()

  @When /^i read this json$/, (callback) ->  callback()
 
  @Then /^the value of "([^"]*)" should be (\d+)$/, (name, value, callback) ->
    console.log "pippa", @[@current_name][name]
    assert.ok @[@current_name][name].toString() == value.toString()



  @Given /^I am on Google$/, (callback) -> @browser.visit('http://www.google.com', callback)

  @When /^I search for "([^"]*)"$/, (arg1, callback) ->
    @browser.fill("q", arg1).pressButton "btnG", callback

  @Then /^I see a link to "([^"]*)"$/, (arg1, callback) ->
    check=@browser.queryAll("a").filter (el) -> ///.+#{arg1}.+///.test(el.getAttribute("href"))

    
    assert.ok(check.length > 0)
    callback()

module.exports = myStepDefinitionsWrapper