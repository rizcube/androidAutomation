When('I swipe from left to right to open left side menu') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.01, start_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 600).perform
  sleep 3
end

Then('I swipe from right to left to close left side menu') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.70, start_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 600).perform
  sleep 2
end

Then('I swipe from right to left to open calculator') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.99, start_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 600).perform
  sleep 2
end

When('I swipe from left to right to close calculator') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.4, start_y: 0.5, end_x: 0.99, end_y: 0.5, duration: 600).perform
  sleep 3
end