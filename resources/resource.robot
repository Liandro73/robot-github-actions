*** Settings ***
Library                                SeleniumLibrary
Resource                               ../configs/global.robot
Resource                               ../configs/users.robot

*** Variables ***
### All variables in entire project can be found in the folder called "variables" or in their respectives "page objects"

*** Keywords ***
Setup
    Setup Selenium
    Open Browser Chrome Parametrized
    Maximize Browser Window

Tear Down
    Close Browser

Setup Selenium
    Set Selenium Timeout               ${TIMEOUT}
    Set Screenshot Directory           ./screenshots

Open Browser Chrome Parametrized
    Open Browser                       browser=${BROWSER}

Scroll To Element
    [Arguments]                        ${locator}
    ${x}=                              Get Horizontal Position      ${locator}
    ${y}=                              Get Vertical Position        ${locator}
    Sleep                              1
    Execute Javascript                 window.scrollTo(${x}, ${y})