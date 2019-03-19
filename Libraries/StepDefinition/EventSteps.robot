*** Settings ***
Library  Selenium2Library
Library  BuiltIn
Resource  ${CURDIR}/../Modules/homePage.robot

*** Keywords ***
I am on eventCinemas HomePage
    Open Browser  ${url}  browser=chrome
    Set Selenium Implicit Wait  30
    Maximize Browser Window

I try to register without providing any inputs
    Click Element  ${menu}
    Sleep  3s
    Click Element  ${tabJoin}
    Click Element  ${btn_Join}

I should get an error
    ${val}=  Get Text  ${errMsgName}
    Log  ${val}
    Close All Browsers