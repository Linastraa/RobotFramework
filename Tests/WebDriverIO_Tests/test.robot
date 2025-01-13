*** Settings ***
Resource    Configs/Keywords.robot
Resource    Pages/WebDriverIO_Pages/Main_Page.robot
Resource    Pages/WebDriverIO_Pages/Login_Page.robot
Resource    Pages/WebDriverIO_Pages/WebView_Page.robot
Resource    Pages/WebDriverIO_Pages/Forms_Page.robot
Resource    Pages/WebDriverIO_Pages/DragAndDrop_Page.robot
Resource    Pages/WebDriverIO_Pages/Swipe_Page.robot
Resource    Configs/Variables.robot



Library    AppiumLibrary

*** Test Cases ***

Successful login with credentials
    [Tags]    first_test
    Open Test Application
    Wait Until Element Is Visible    ${LOGIN_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element  ${LOGIN_LOCATOR}
    Wait Until Element Is Visible    ${EMAIL_LOCATOR}    10 seconds
    Input Text    ${EMAIL_LOCATOR}    ${LOGIN_EMAIL}
    Wait Until Element Is Visible    ${PASSWORD_LOCATOR}    10 seconds
    Input Password    ${PASSWORD_LOCATOR}    ${LOGIN_PASS}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10 seconds
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    10 seconds
    Element Text Should Be    ${SUCCESS_MESSAGE}    You are logged in!
    Close Application

Homepage clicking on api word test
    [Tags]    second_test
    Open Test Application
    Wait Until Element Is Visible    ${HOME_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element  ${HOME_LOCATOR}
    Wait Until Element Is Visible    ${PROOF_OF_WEBVIEW_PAGE}    10 seconds    locator wasnt displayed
    Element Should Be Visible    android= new UiScrollable(new UiSelector()).scrollIntoView(new UiSelector().description("API Reference"))
    Click Element    ${API_LOCATOR}
    Wait Until Element Is Visible    ${PROOF_OF_AFTER_API_IS_CLICKED}    10 seconds    locator wasnt displayed
    Element Text Should Be    ${PROOF_OF_AFTER_API_IS_CLICKED}    Introduction
    Close Application

Successful signup
    [Tags]    third_test
    Open Test Application
    Wait Until Element Is Visible    ${LOGIN_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element    ${LOGIN_LOCATOR}
    Wait Until Element Is Visible    ${SIGNUP_LOCATOR}     10 seconds    locator wasnt displayed
    Click Element    ${SIGNUP_LOCATOR} 
    Input Text    ${SIGNUP_EMAIL_FIELD}    ${SIGNUP_EMAIL}
    Input Password    ${SIGNUP_PASS_FIELD}    ${SIGNUP_PASS}
    Input Password    ${SIGNUP_CON_FIELD}    ${SIGNUP_PASS}
    Click Element    ${SIGNUP_BUTTON}
    Wait Until Element Is Visible    ${SIGNUP_SUCCESS_MESSAGE}    10 seconds    locator wasnt displayed
    Element Text Should Be    ${SIGNUP_SUCCESS_MESSAGE}    You successfully signed up!
    Close Application

Form tests
    [Tags]    fourth_test
    Open Test Application
    Wait Until Element Is Visible    ${FORMS_BUTTON}    10 seconds    locator wasnt displayed
    Click Element    ${FORMS_BUTTON}
    Wait Until Element Is Visible    ${INPUT_FIELD}    10 seconds    locator wasnt displayed
    Input Text    ${INPUT_FIELD}    This is a Test
    ${test}    Get Text    ${TEXT_FIELD}
    Log        Num value is ${test}
    Element Text Should Be    ${TEXT_FIELD}   This is a Test
    Click Element    ${SWITCH}
    Click Element    ${DROPDOWN_MENU}
    Wait Until Element Is Visible    ${DROPDOWN_MENU_FIRST}    10 seconds    locator wasnt displayed
    Click Element    ${DROPDOWN_MENU_FIRST}
    Click Element    ${DROPDOWN_MENU}
    Wait Until Element Is Visible    ${DROPDOWN_MENU_FIRST}    10 seconds    locator wasnt displayed
    Click Element    ${DROPDOWN_MENU_SECOND}
    Click Element    ${BUTTON}
    Wait Until Element Is Visible    ${BUTTON_OK}    10 seconds    locator wasnt displayed
    Click Element    ${BUTTON_OK}
    Click Element    ${BUTTON}
    Wait Until Element Is Visible    ${BUTTON_OK}    10 seconds    locator wasnt displayed
    Click Element    ${BUTTON_CANCEL}
    Click Element    ${BUTTON}
    Wait Until Element Is Visible    ${BUTTON_OK}    10 seconds    locator wasnt displayed
    Click Element    ${BUTTON_ASKMELATER}

Swipe tests
    [Tags]    fifth_test
    Open Test Application
    Wait Until Element Is Visible    ${SWIPE_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element    ${SWIPE_LOCATOR}
    # Swipe Lift to Right       
    FOR    ${SUPPORT VIDEOS}    IN RANGE    0    4    
          Sleep    2        
          Log    ${SUPPORT VIDEOS}       
          Swipe    ${SWIPE_START_X}    ${SWIPE_START_Y}    ${SWIPE_END_X}    ${SWIPE_END_Y}    duration=${DURATION}        
    END       
    # Swipe Right to Lift       
    FOR    ${ELEMENT_SELECTOR}    IN RANGE    0    3    
        Sleep    2     
        Log    ${ELEMENT_SELECTOR}
        Swipe    ${START_X_RIGHT}    ${SWIPE_START_Y}    ${END_X_RIGHT}     ${SWIPE_END_Y}     duration=${DURATION}
    END



Drag and drop test
    [Tags]    sixth_test
    Open Test Application
    Wait Until Element Is Visible    ${DRAG_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element    ${DRAG_LOCATOR}
    Wait Until Element Is Visible    ${PageProof}    10 seconds    locator wasnt displayed
    Drag All And Drop All
    Wait Until Element Is Visible    ${CongratsProof}    10 seconds    locator wasnt displayed
    Element Text Should Be    ${CongratsProof}    You made it, click retry if you want to try it again.
    

DatePicker test
