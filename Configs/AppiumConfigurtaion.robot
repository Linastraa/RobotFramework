*** Settings ***
Library    AppiumLibrary

*** Variables ***

${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
#${ANDROID_PLATFORM_VERSION}   8.1
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}                com.wdiodemoapp
${APP_ACTIVITY}               com.wdiodemoapp.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723

