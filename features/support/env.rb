require "appium_lib"
require 'test/unit/assertions'


def caps
  {
  caps: {
      deviceName:"Name",
      platformName:"Android",
      app:(File.join(File.dirname(__FILE__ ),"PreciseUnitConversion.apk")),
      appPackage: "com.ba.universalconverter",
      appActivity: "MainConverterActivity",
      newcomandTimeout:"3600"
  }}
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object


def find_in_list(value)
  sleep 5
  3.times { Appium:: TouchAction.new.swipe(start_x:0.5, start_y: 0.2, end_x: 0.5, end_y: 0.8, duration: 600).perform }

  current_screen = get_source
  previous_screen = ""

  until exists {find_element(xpath: "//android.widget.TextView[@text='#{value}']")} || (current_screen == previous_screen) do
    sleep 3
    Appium:: TouchAction.new.swipe(start_x:0.5, start_y: 0.8, end_x: 0.5, end_y: 0.2, duration: 600).perform
    previous_screen = current_screen
    current_screen = get_source
  end

  if exists {find_element(xpath: "//android.widget.TextView[@text='#{value}']")}
    find_element(xpath: "//android.widget.TextView[@text='#{value}']").click
  else
    raise("Cann't file element with text #{value}")
  end
end