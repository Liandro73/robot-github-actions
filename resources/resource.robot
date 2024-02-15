*** Settings ***
Library                                SeleniumLibrary
Library                                ../configs/core/chromedriversync.py
Resource                               ../configs/global.robot
Resource                               ../configs/users.robot

*** Variables ***
### All variables in entire project can be found in the folder called "variables" or in their respectives "page objects"

*** Keywords ***
Setup
    Setup Selenium
    # Open Browser Chrome Parametrized
    # Maximize Browser Window

Tear Down
    Close Browser

Setup Selenium
    Set Selenium Timeout               ${TIMEOUT}
    Set Screenshot Directory           ./screenshots

Open Browser Chrome Parametrized
    # ${CHROME_OPTIONS}=                 Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()     sys, selenium.webdriver
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --ignore-certificate-errors
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --disable-extensions
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --headless
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --disable-gpu
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --disable-dev-shm-usage
    # Call Method                        ${CHROME_OPTIONS}     add_argument    --no-sandbox
    # Create Webdriver                   Chrome                chrome_options=${CHROME_OPTIONS}
    Open Browser                       browser=${BROWSER}

Scroll To Element
    [Arguments]                        ${locator}
    ${x}=                              Get Horizontal Position      ${locator}
    ${y}=                              Get Vertical Position        ${locator}
    Sleep                              1
    Execute Javascript                 window.scrollTo(${x}, ${y})