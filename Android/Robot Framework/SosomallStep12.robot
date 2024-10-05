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
${platformVersion}    12
${automationName}    UiAutomator2

*** Keywords ***
Setup Keyword
    Open Application    ${REMOTE_URL}  platformName=${platformName}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}  udid=${udid}  platformVersion=${platformVersion}  automationName=${automationName}

Login
    Wait Until Element Is Visible    ${SosomallDollar}    5000
    Click Element    ${SosomallDollar}
    Wait Until Element Is Visible    ${idbt}    5000
    Input Text   ${idbt}    ${ID}
    Input Text    ${PassBt}    ${Pass}
    Click Element    ${SubmitBtn}

SearchItem
    Click Element    ${SearchBtn}  

Profile
    Click Element    ${SosomallDollar}

Testing
    Wait Until Element Is Visible    ${SearchBtn}    5000
    Click Element    ${ProfileBtn}
    Wait Until Element Is Visible    ${HomeBtn}    5000
    Click Element    ${CartBtn}
    Wait Until Element Is Visible    ${HomeBtn}    5000
    Click Element    ${MassageBtn}
    Wait Until Element Is Visible    ${HomeBtn}    5000
    Click Element    ${HomeBtn}
    Wait Until Element Is Visible    ${FirstProduct}    5000
    Click Element    ${KolPage}
    