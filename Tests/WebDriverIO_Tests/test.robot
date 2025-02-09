*** Settings ***
Resource    ../../Configs/Keywords.robot
Resource    ../../Pages/WebDriverIO_Pages/Login_Page.robot
Resource    ../../Pages/WebDriverIO_Pages/WebView_Page.robot
Resource    ../../Pages/WebDriverIO_Pages/Forms_Page.robot
Resource    ../../Pages/WebDriverIO_Pages/DragAndDrop_Page.robot
Resource    ../../Pages/WebDriverIO_Pages/Swipe_Page.robot
Resource    ../../Pages/WebDriverIO_Pages/Main_Page.robot

Library    AppiumLibrary

Test Setup    Open Test Application
Test Teardown    Close Application

*** Test Cases ***

Successful login with credentials
    [Tags]    Functional
    Click On Login Button
    Perform Successful Login

WebView clicking on api word test
    [Tags]    Regression
    Click On WebView Button
    Perform ScrollDown to Element Then Click on it
    Verify User Navigated to Last Destination

Successful signup
    [Tags]   Hamza
    Click On Login Button
    Click On Signup Button
    Perform Successful Signup

Form tests
    [Tags]    Functional
    Click On Forms Button
    Perform Random Tests

Swipe tests
    [Tags]    Functional
    Click on Swipe Button
    Perform Swipe Tests

Drag and drop test
    [Tags]    Functional
    Click On DragAndDrop Button
    Perform Drag And Drop Tests
    

