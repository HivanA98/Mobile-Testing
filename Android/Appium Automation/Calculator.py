from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.webdriver import AppiumOptions
from appium import webdriver

options = AppiumOptions()
options.app_package = "com.google.android.calculator"
options.app_activity = "com.android.calculator2.Calculator"
options.platform_name = "Android"
options.device_name = "VirtualDevice"
options.udid = "emulator-5554"
options.platform_version = "14"
options.automation_name = "UiAutomator2"

driver = webdriver.Remote('http://localhost:4723/wd/hub', options=options)

driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_0").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_1").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_2").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_3").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_4").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_5").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_6").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_7").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_8").click()
driver.find_element(AppiumBy.ID, "com.google.android.calculator:id/digit_9").click()