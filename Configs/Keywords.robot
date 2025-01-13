*** Settings ***
Resource    Configs/AppiumConfigurtaion.robot
Resource    Pages/WebDriverIO_Pages/DragAndDrop_Page.robot

*** Keywords ***
Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    #...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}


Drag all and Drop all
    Drag And Drop    ${l1Drag}    ${l1Drop}
    Drag And Drop    ${l2Drag}    ${l2Drop}
    Drag And Drop    ${l3Drag}    ${l3Drop}
    Drag And Drop    ${r1Drag}    ${r1Drop}
    Drag And Drop    ${r2Drag}    ${r2Drop}
    Drag And Drop    ${r3Drag}    ${r3Drop}
    Drag And Drop    ${c1Drag}    ${c1Drop}
    Drag And Drop    ${c2Drag}    ${c2Drop}
    Drag And Drop    ${c3Drag}    ${c3Drop}