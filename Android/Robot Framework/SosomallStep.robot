*** Settings ***
Variables    SosomallResource.py
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${appPackage}    com.sosomall.dev
${appActivity}    com.sosomall.MainActivity
${platformName}    Android
${deviceName}    VirtualDevice
${udid}    emulator-5554
${platformVersion}    14
${automationName}    UiAutomator2

*** Keywords ***
Setup Keyword
    Open Application    ${REMOTE_URL}  platformName=${platformName}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}  udid=${udid}  platformVersion=${platformVersion}  automationName=${automationName}

Login
    Click Element    ${SosomallDollar}
    Input Text   ${idbt}    ${ID}
    Input Text    ${PassBt}    ${Pass}
    Click Element    ${SubmitBtn}

SearchItem
    Click Element    ${SearchBtn}  

Profile
    Click Element    ${SosomallDollar}

Testing
    wait until page contains element    ${SearchBtn}
    Click Element    ${ProfileBtn}
    # Click Element    ${CartBtn}
    Click Element    ${MassageBtn}
    Click Element    ${HomeBtn}
    Click Element    ${KolPage}
    