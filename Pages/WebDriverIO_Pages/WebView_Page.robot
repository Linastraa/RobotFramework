*** Settings ***
Resource    ../../Pages/WebDriverIO_Pages/WebView_Page.robot
Resource    ../../Configs/Keywords.robot

Library    AppiumLibrary

*** Variables ***
${PROOF_OF_WEBVIEW_PAGE}    xpath=//android.widget.TextView[@text="Next-gen browser and mobile automation test framework for Node.js"]
${API_LOCATOR}    xpath=//android.view.View[@content-desc="API Reference"]
${PROOF_OF_AFTER_API_IS_CLICKED}    xpath=//android.widget.TextView[@text="Introduction"]
${Message}    Introduction

*** Keywords ***
Perform ScrollDown to Element Then Click on it
    Wait    ${PROOF_OF_WEBVIEW_PAGE}
    Element Should Be Visible    android=new UiScrollable(new UiSelector()).scrollIntoView(new UiSelector().description("API Reference"))
    Click Element    ${API_LOCATOR}

Verify User Navigated to Last Destination
    Wait    ${PROOF_OF_AFTER_API_IS_CLICKED}
    Element Text Should Be    ${PROOF_OF_AFTER_API_IS_CLICKED}    ${Message}