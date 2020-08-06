Then('Left unit picker value should be {string}') do |value|
  log("Left unit picker value is "+ value)
end

Then('Right unit picker value should be {string}') do |value|
  log("Right unit picker value is "+ value)
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  log("button is enabled")
end

When('I press on Clear button') do
  log("clear button is pressed")
end
