*** Settings ***
Variables    CalculatorResource.py
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

Click Angka
    Click Element    ${one}
    Click Element    ${two}
    Click Element    ${three}
    Click Element    ${four}
    Click Element    ${five}
    Click Element    ${six}
    Click Element    ${seven}
    Click Element    ${eight}
    Click Element    ${nine}
    Click Element    ${zero}