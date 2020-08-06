Then('Left unit picker value should be {string}') do |value|
  log("Left unit picker value is "+ value)
end

Then('Right unit picker value should be {string}') do |value|
  log("Right unit picker value is "+ value)
end

Then(/^Show All button should be (enabled|disabled|undefined)$/) do |state|
  if state == "enabled"
    log("button is enabled")
  elsif state == "disabled"
    log("button is disabled")
  elsif state == "undefined"
    log("button is undefined")
  end
end

When('I press on Clear button') do
  log("clear button is pressed")
end
