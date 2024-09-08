from appium import webdriver

desired_caps = {}

desired_caps['platformName'] = 'Android'
desired_caps['deviceName'] = 'VirtualDevice'
desired_caps['appPackage'] = 'com.sosomall.dev'
desired_caps['appActivity'] = 'com.sosomall.MainActivity'

driver = webdriver.Remote('http://127.0.0.1:4723/wd/hub', desired_caps)



driver.find_element_by_xpath('//android.widget.TextView[@text="iphone 14 depin"]').click()
