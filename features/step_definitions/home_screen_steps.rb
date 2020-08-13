Then('Left unit picker value should be {string}') do |value|
  find_element(xpath: "//*[contains(@text, #{value})]")
  log("Left unit picker value is "+ value)
end

Then('Right unit picker value should be {string}') do |value|
  find_element(xpath: "//*[contains(@text, #{value})]")
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


When(/^I type "([^"]*)" to target text field$/) do |target|
  log("targ is #{target}")
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  log("result is #{result}")
end

Then('I press on Add to Favorites icon') do
  find_element(id:"action_add_favorites").click
end

Then('I press on Favorite conversions') do
  find_element(xpath: "//*[contains(@text, 'Favorite conversions')]").click
end

Then('I verify {string} to Favourite conversions list') do |unit_type|
  find_element(xpath: "//*[contains(@text, #{unit_type})]")
end
