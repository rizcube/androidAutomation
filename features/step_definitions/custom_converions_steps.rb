Then('I press on Create your first conversion') do
  find_element(id:"btn_new_custom_conversion").click
end

Then('I type {string} as custom conversion name') do |conversion_name|
  sleep 3
  find_element(id: "edit_custom_conversion_category_name").send_keys(conversion_name)
  #find_element(xpath: "//*[contains(@text, #{conversion_name})]")
end

When('I press on New unit button') do
  sleep 3
  find_element(id: "btn_new_custom_unit").click
  #find_element(xpath: "//*[contains(@text, 'NEW UNIT')]").click
  sleep 3
end

Then('I type {string} as unit name') do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then('I type {string} as unit symbol') do |unit_symbol|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(unit_symbol)
end

Then('I type {string} as unit value') do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then('I press submit checkmark on Custom conversions screen') do
  sleep 3
  find_element(id: "action_confirm_custom_unit").click
  sleep 2
end

When('I press on OK button') do
  sleep 2
  find_element(id: "btn_custom_conversion_details_ok").click
  sleep 1
end

Then('I verify {string} added to Custom conversions list') do |conversion_name|
  find_element(xpath: "//*[contains(@text, #{conversion_name})]")
end
