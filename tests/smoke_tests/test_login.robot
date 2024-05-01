*** Settings ***
Documentation    Test online shop login functionality
Library          SeleniumLibrary
Resource         ../../resources/common.robot

*** Test Cases ***
Login with valid credentials
    [Documentation]    User can successfully login with valid credentials
    [Tags]    Smoke
    Open online shop website
    Click SignIn button
    Input valid credentials and submit login
    Verify successful login
    Logout from the website
    Exit the browser

Login with invalid credentials should fail
    [Documentation]    User should see error message after attempting login with invalid credentials
    [Tags]    Smoke
    Open online shop website
    Click SignIn button
    Input invalid credentials and submit login
    Verify failed attempt
    Exit the browser