*** Settings ***
Documentation                       Regression testing to Swag Labs login page
Resource                            ../../resources/resource.robot
Resource                            ../../resources/pageobjects/Wortecs_Login.robot
Resource                            ../../resources/pageobjects/Wortecs_Products.robot
Test Setup                          Setup
Test Teardown                       Tear Down

*** Test Cases ***
Login
    [Documentation]                 Login Swag Labs
    [Tags]                          login
    Given that I go to the do Swag Labs login page
    When fill user and password fields    ${USER}    ${PASSWORD}
    And click on Login button
    Then Then I should be redirected to Swag Labs products page