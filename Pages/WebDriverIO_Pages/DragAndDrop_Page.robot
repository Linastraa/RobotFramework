*** Settings ***
Resource    ../../Pages/WebDriverIO_Pages/DragAndDrop_Page.robot
Resource    ../../Configs/Keywords.robot

Library    AppiumLibrary

*** Variables ***
${PageProof}    //android.widget.TextView[@text="Drag and Drop"]

${l1Drag}    l1
${l2Drag}    l2
${l3Drag}    l3
${r1Drag}    r1
${r2Drag}    r2
${r3Drag}    r3
${c1Drag}    c1
${c2Drag}    c2
${c3Drag}    c3

${l1Drop}    l1
${l2Drop}    l2
${l3Drop}    l3
${r1Drop}    r1
${r2Drop}    r2
${r3Drop}    r3
${c1Drop}    c1
${c2Drop}    c2
${c3Drop}    c3

${CongratsProof}    //android.widget.TextView[@text="You made it, click retry if you want to try it again."]

*** Keywords ***
Perform Drag and Drop Tests
    Wait    ${PageProof}
    Drag All And Drop All
    Wait    ${CongratsProof}
    Element Text Should Be    ${CongratsProof}    You made it, click retry if you want to try it again.

Drag all and Drop all
    Drag Then Drop    ${l1Drag}    ${l1Drop}
    Drag Then Drop    ${l2Drag}    ${l2Drop}
    Drag Then Drop    ${l3Drag}    ${l3Drop}
    Drag Then Drop    ${r1Drag}    ${r1Drop}
    Drag Then Drop    ${r2Drag}    ${r2Drop}
    Drag Then Drop    ${r3Drag}    ${r3Drop}
    Drag Then Drop    ${c1Drag}    ${c1Drop}
    Drag Then Drop    ${c2Drag}    ${c2Drop}
    Drag Then Drop    ${c3Drag}    ${c3Drop}
    
Drag then Drop
    [Arguments]    ${DragLocator}    ${DropLocator}    
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-${DragLocator}"]/android.widget.ImageView    //android.view.ViewGroup[@content-desc="drop-${DropLocator}"]/android.view.ViewGroup
    