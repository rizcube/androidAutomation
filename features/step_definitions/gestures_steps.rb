When('I swipe from left to right') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.03, start_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 600).perform
  sleep 3
end

Then('I swipe from right to left') do
  sleep 2
  Appium:: TouchAction.new.swipe(start_x:0.99, start_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 600).perform
  sleep 3
end