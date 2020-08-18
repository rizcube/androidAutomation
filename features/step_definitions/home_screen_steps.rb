Then('Left unit picker value should be {string}') do |unit_value|
  log(unit_value)
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[0].text
  if actual_picker_text != unit_value
    fail("Expected unit picker value is #{unit_value}, actual value is #{actual_picker_text}")
  end
end

Then('Right unit picker value should be {string}') do |unit_value|
  array_of_elements = find_elements(:id, "select_unit_spinner")
  actual_picker_text = array_of_elements[1].text
  if actual_picker_text != unit_value
    fail("Expected unit picker value is #{unit_value}, actual value is #{actual_picker_text}")
  end
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
  digits = target.split("")
  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
end

# if actual_target_value !=  target
#   fail("Expected unit picker value is #{target}, actual value is #{actual_target_value}")
# end

# array_btn_row_3 = find_elements(id: "buttons_row_3")
# selected_btn = array_btn_row_3[0].text
# log("hi")
# log(selected_btn)

# text(target).click
# btn_pressed = Appium::TouchAction.new.tap(x:184,y:814, count: 5).perform
# log("btn value should be 2")
# log(btn_pressed)
# sleep 3
# log(target)

Then(/^I should see result as "([^"]*)"$/) do |result|
  log(result)
  actual_result_value = find_element(id: "target_value").text
  log(actual_result_value)

  if actual_result_value != result
    fail("Expected result value is #{result} , actual value is #{actual_result_value}")
  end
  # find_element(xpath: "//*[contains(@text, #{result})]")
  # actual_target_value = find_element(id: "target_value").text
  # log(actual_target_value)
end

Then('I press on Add to Favorites icon') do
  find_element(id: "action_add_favorites").click
end

Then('I press on Favorite conversions') do
  find_element(xpath: "//*[contains(@text, 'Favorite conversions')]").click
end

Then('I verify {string} to Favourite conversions list') do |unit_type|
  find_element(xpath: "//*[contains(@text, #{unit_type})]")
end

Then('I press on search icon') do
  find_element(id: "action_bar").find_element(id: "action_search").click
end

Then('I type {string} in search field') do |search_text|
  find_element(id: "search_src_text").send_keys(search_text)
  sleep 5
end

Then('I press return button on soft keyboard') do
  Appium::TouchAction.new.tap(x: 0.99, y: 0.99, count: 1).perform
end

Then('I verify {string} as a current unit converter') do |current_unit|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{current_unit}']")
end
