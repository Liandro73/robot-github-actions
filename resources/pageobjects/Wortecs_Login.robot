*** Settings ***
Library                                SeleniumLibrary
Library                                ../../configs/core/chromedriversync.py
Resource                               ../../configs/global.robot
Resource                               ../../configs/users.robot
Resource                               ../../configs/environments.robot

*** Variables ***
${LOGO_SWAG_LABS}                      class=login_logo
${INPUT_USERNAME}                      user-name
${INPUT_PASSWORD}                      password
${BTN_LOGIN}                           login-button

*** Keywords ***
Given that I go to the do Swag Labs login page
    ${chromedriver_path}=    Get Chromedriver Path
    Create Webdriver    Chrome         ${chromedriver_path}
    Go To                              ${URL}
    Wait Until Element Is Visible      ${LOGO_SWAG_LABS}

When fill user and password fields
    [Arguments]                        ${USER}                          ${PASSWORD}
    Input Text                         ${INPUT_USERNAME}                ${USER}
    Input Text                         ${INPUT_PASSWORD}                ${PASSWORD}

And click on Login button
    Click Element                      ${BTN_LOGIN}
