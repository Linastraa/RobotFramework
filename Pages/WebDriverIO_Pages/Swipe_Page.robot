*** Settings ***
Resource    ../../Pages/WebDriverIO_Pages/Swipe_Page.robot

Library    AppiumLibrary

*** Variables ***
${Swipe_Button}    //android.widget.TextView[@text="Swipe"]
${Swipe}    //android.view.ViewGroup[@content-desc="Carousel"]/android.view.ViewGroup/android.view.ViewGroup

${Swip_button}      xpath= //android.view.View[@content-desc="Swipe"]
${SWIPE_START_X}    100
${SWIPE_START_Y}    900
${SWIPE_END_X}      50
${SWIPE_END_Y}      100
${DURATION}         1000     # Duration of the swipe in milliseconds
${START_X_RIGHT}    50
${END_X_RIGHT}      100

*** Keywords ***
Perform Swipe Tests
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
