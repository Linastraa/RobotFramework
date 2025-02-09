*** Settings ***
Resource    ../../Configs/Keywords.robot
Library    AppiumLibrary

*** Variables ***
${HOME}               Home
${WEBVIEW}            Webview
${LOGIN}              Login
${FORMS}              Forms
${SWIPE}              Swipe
${DRAG}               Drag

*** Keywords ***
Click on Login Button
    [Documentation]    Keyword to Click on Login Button and Navigate to Login Page
    Wait And Click Element    //android.widget.TextView[@text="${LOGIN}"]

Click on WebView Button
    [Documentation]    Keyword to Click on WebView Button and Navigate to WebView Page
    Wait And Click Element    //android.widget.TextView[@text="${WEBVIEW}"]
    

Click on Forms Button
    [Documentation]    Keyword to Click on Forms Button and Navigate to Forms Page
    Wait And Click Element    //android.widget.TextView[@text="${FORMS}"]

Click on Swipe Button
    [Documentation]    Keyword to Click on Swipe Button and Navigate to Swipe Page
    Wait And Click Element    //android.widget.TextView[@text='Swipe']

Click on DragAndDrop Button
    [Documentation]    Keyword to Click on DragAndDrop Button and Navigate to DragAndDrop Page
    Wait And Click Element    //android.widget.TextView[@text="${DRAG}"]