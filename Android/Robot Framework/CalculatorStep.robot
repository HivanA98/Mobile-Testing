*** Settings ***
Resource    CalculatorResource.py
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${appPackage}    com.google.android.calculator
${appActivity}    com.android.calculator2.Calculator
${platformName}    Android
${deviceName}    VirtualDevice
${udid}    emulator-5554
${platformVersion}    14
${automationName}    UiAutomator2

*** Keywords ***
Open Test Application
    Open Application    ${REMOTE_URL}  platformName=${platformName}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}  udid=${udid}  platformVersion=${platformVersion}  automationName=${automationName}

Click Number 1
    Click Element    id=com.google.android.calculator:id/digit_1