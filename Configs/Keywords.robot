*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}                com.wdiodemoapp
${APP_ACTIVITY}               com.wdiodemoapp.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723

*** Keywords ***
Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10 seconds    Element wasn't visible
    Click Element    ${locator}
    
Wait and Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible
    Input Text    ${locator}    ${text}

Wait and Verify Element
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible
    Element Text Should Be    ${locator}    ${text}

Wait
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible