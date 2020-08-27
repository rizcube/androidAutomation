Before do
  $driver.start_driver
end

After do |scenario|

  if scenario.failed?
    if !File.directory?("screenshots") # if there is no directory create one with the name "screenshots"
      FileUtils.mkdir_p("screenshots")
    end
    # each screenshot should have a unique name
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png" )

  end
  sleep 3
  $driver.driver_quit
end