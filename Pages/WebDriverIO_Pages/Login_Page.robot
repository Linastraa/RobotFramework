*** Settings ***
Library    AppiumLibrary
Resource    ../../Pages/WebDriverIO_Pages/Login_Page.robot
Resource    ../../Configs/Keywords.robot

*** Variables ***
${EMAIL_LOCATOR}              xpath=//android.widget.EditText[@content-desc="input-email"]
${PASSWORD_LOCATOR}           xpath=//android.widget.EditText[@content-desc="input-password"]
${LOGIN_BUTTON}               //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
${LOGIN_SUCCESS_MESSAGE}            //android.widget.TextView[@resource-id="android:id/message"]
${SIGNUP_LOCATOR}            //android.widget.TextView[@text="Sign up"]
${SIGNUP_EMAIL_FIELD}        //android.widget.EditText[@content-desc="input-email"]
${SIGNUP_PASS_FIELD}        //android.widget.EditText[@content-desc="input-password"]
${SIGNUP_CON_FIELD}        //android.widget.EditText[@content-desc="input-repeat-password"]
${SIGNUP_BUTTON}            //android.widget.TextView[@text="SIGN UP"]
${SIGNUP_SUCCESS_MESSAGE}    //android.widget.TextView[@resource-id="android:id/message"]
${Login_Message}    You are logged in!
${Signup_Message}    You successfully signed up!

${SIGNUP_EMAIL}    Testt@test.com
${SIGNUP_PASS}     Test@1234
${LOGIN_EMAIL}     Testt@test.com
${LOGIN_PASS}      Test@1234

*** Keywords ***
Perform Successful Login
    [Documentation]    Keyword to Enter a Valid Username and Password then Verify if User is Logged in
    Wait And Input Text    ${EMAIL_LOCATOR}    ${LOGIN_EMAIL}
    Input Password    ${PASSWORD_LOCATOR}    ${LOGIN_PASS}
    Click Element    ${LOGIN_BUTTON}
    Wait And Verify Element    ${LOGIN_SUCCESS_MESSAGE}    ${Login_Message}

Click on Signup Button
    [Documentation]    Keyword to Click on Signup Button and Navigate to Signup Page
    Wait And Click Element    ${SIGNUP_LOCATOR}

Perform Successful Signup
    [Documentation]    Keyword to Enter a Valid User Info then Verify is User is Registered
    Input Text    ${SIGNUP_EMAIL_FIELD}    ${SIGNUP_EMAIL}
    Input Password    ${SIGNUP_PASS_FIELD}    ${SIGNUP_PASS}
    Input Password    ${SIGNUP_CON_FIELD}    ${SIGNUP_PASS}
    Click Element    ${SIGNUP_BUTTON}
    Wait    ${SIGNUP_SUCCESS_MESSAGE}
    Element Text Should Be    ${SIGNUP_SUCCESS_MESSAGE}    ${Signup_Message}