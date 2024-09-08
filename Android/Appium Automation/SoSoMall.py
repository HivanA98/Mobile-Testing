from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.webdriver import AppiumOptions
from appium import webdriver

options = AppiumOptions()
options.platform_name = "Android"
options.automation_name = "UiAutomator2"
options.deviceName = "Android"
options.app_package = "com.sosomall.dev"
options.app_activity = "com.sosomall.MainActivity"
options.appActivity='.Settings',
options.language='en',
options.locale='US'


driver = webdriver.Remote('http://localhost:4723/wd/hub', options=options)

driver.find_element(AppiumBy.XPATH, '//android.widget.TextView[@text="F22-Raptor"]').click()