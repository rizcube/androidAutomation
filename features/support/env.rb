require "appium_lib"
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