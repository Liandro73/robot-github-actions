*** Settings ***
Library                                SeleniumLibrary
Resource                               ../../configs/global.robot
Resource                               ../../configs/users.robot
Resource                               ../../configs/environments.robot

*** Variables ***
${ICON_PRODUCTS_PAGE}                  class=app_logo

*** Keywords ***
Then I should be redirected to Swag Labs products page
    Wait Until Element Is Visible      ${ICON_PRODUCTS_PAGE}