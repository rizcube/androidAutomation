Then('Left unit picker value should be {string}') do |unit_value|
  log(unit_value)
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[0].text
  raise("Expected unit picker value is  #{unit_value} , Actual picker text is #{actual_picker_text}") if actual_picker_text != unit_value
  #if actual_picker_text != unit_value
  # fail("Expected unit picker value is #{unit_value}, actual value is #{actual_picker_text}")
  #end
end

Then('Right unit picker value should be {string}') do |unit_value|
  log(unit_value)
  array_of_elements = find_elements(:id, "select_unit_spinner")
  actual_picker_text = array_of_elements[1].text
  if actual_picker_text != unit_value
    fail("Expected unit picker value is #{unit_value}, actual value is #{actual_picker_text}")
  end
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  button_state = find_element(id: "btn_show_all").enabled?
  if state == "enabled"
    fail("Expected to be enabled") if button_state != true
  elsif state == "disabled"
      fail("Expected to be disabled ") if button_state != false
  end
end

When('I press on Clear button') do
  log("clear button is pressed")
end

When(/^I type "([^"]*)" on the application keyboard$/) do |target|
  digits = target.split("")
  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  log(result)
  actual_result_value = find_element(id: "target_value").text
  log(actual_result_value)

  if actual_result_value != result
    fail("Expected result value is #{result} , actual value is #{actual_result_value}")
  end

end

Then('I press on Add to Favorites icon') do
  find_element(id: "action_add_favorites").click
end

Then('I press on Favorite conversions') do
  find_element(xpath: "//*[contains(@text, 'Favorite conversions')]").click
end

Then('I verify {string} to Favourite conversions list') do |unit_type|
  #find_element(xpath: "//*[contains(@text, #{unit_type})]")
  log(unit_type)
  actual_unit_type = find_element(id: "favorites_item_hint").text
  raise("found #{actual_unit_type} in the Favourite conversions list, it should be #{unit_type}") if actual_unit_type != unit_type

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
  find_element(xpath: "//android.widget.TextView[@text='#{current_unit}']")
end


Then(/^I select "([^"]*)" from left unit picker$/) do |value|
  log(value)
  left_picker_value = find_elements(id: 'select_unit_spinner')[0].click
  find_in_list(value)
end


Then('left Unit picker value should be {string}') do |unit_text|
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_unit_text = array_of_elements[0].click
  log(actual_unit_text)

end

When('I press on switch units button') do
  find_element(id: "img_switch").click
end

Then(/^I select "([^"]*)" from menu$/) do |value|
  log(value)
  find_element(xpath: "//android.widget.TextView[@text='#{value}']").click
end

Then(/^I select "([^"]*)" from the right unit picker$/) do |value|
  log(value)
  left_picker_value = find_elements(id: 'select_unit_spinner')[1].click
  find_in_list(value)
end

Then('I should see text {string}') do |string|
  message = find_element(id: "text_info_history").text
  log(message)
end

When('I press {string} on the keypad') do |string|
  log(string)
end

And(/^I verify that (\d+)(?:st|nd|rd|th)? result in history list is "([^"]*)"$/) do |index, text|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  log(parent_element)
  actual_text = array_of_elements[index.to_i - 1].find_element(id: "history_item_hint").text
  if actual_text != text
    raise("Expected text is #{text}, actual text is #{actual_text}")
  end
end

When(/^I press delete from history at (\d+)st row$/ )do |index|
  parent_element = find_element(id: "history_single_line")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  sleep 5
  icon = array_of_elements[index.to_i - 1].find_element(id: "deleteIcon").click
  log(icon)
end
