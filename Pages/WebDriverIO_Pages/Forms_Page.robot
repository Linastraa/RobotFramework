*** Settings ***
Resource    ../../Pages/WebDriverIO_Pages/Forms_Page.robot
Resource    ../../Configs/Keywords.robot

Library    AppiumLibrary

*** Variables ***
${INPUT_FIELD}              //android.widget.EditText[@content-desc="text-input"]
${TEXT_FIELD}               //android.widget.TextView[@content-desc="input-text-result"]
${SWITCH}                   //android.widget.Switch[@content-desc="switch"]
${DROPDOWN_MENU}            //android.widget.EditText[@resource-id="text_input"]
${DROPDOWN_MENU_FIRST}       //android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="webdriver.io is awesome"]
${DROPDOWN_MENU_SECOND}      //android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Appium is awesome"]
${BUTTON}                    //android.widget.TextView[@text="Active"]
${BUTTON_OK}                //android.widget.Button[@resource-id="android:id/button1"]
${BUTTON_CANCEL}            //android.widget.Button[@resource-id="android:id/button2"]
${BUTTON_ASKMELATER}        //android.widget.Button[@resource-id="android:id/button3"]
${INPUT_TEXT}    This is a Test

*** Keywords ***
Perform Random Tests
    Wait And Input Text    ${INPUT_FIELD}    ${INPUT_TEXT}
    ${test}    Get Text    ${TEXT_FIELD}
    Log        Num value is ${test}
    Element Text Should Be    ${TEXT_FIELD}   ${INPUT_TEXT}
    Click Element    ${SWITCH}
    Click Element    ${DROPDOWN_MENU}
    Wait And Click Element    ${DROPDOWN_MENU_FIRST}
    Click Element    ${DROPDOWN_MENU}
    Wait And Click Element    ${DROPDOWN_MENU_SECOND}
    Click Element    ${BUTTON}
    Wait And Click Element    ${BUTTON_OK}
    Click Element    ${BUTTON}
    Wait And Click Element    ${BUTTON_CANCEL}
    Click Element    ${BUTTON}
    Wait And Click Element    ${BUTTON_ASKMELATER}