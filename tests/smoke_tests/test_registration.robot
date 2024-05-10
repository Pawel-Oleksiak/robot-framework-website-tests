*** Settings ***
Documentation    Register new account
Library          SeleniumLibrary
Resource         ../../resources/common.robot
Resource         ../../resources/registration.robot

*** Test Cases ***
Register new account
    [Documentation]    User can register new account
    [Tags]    Smoke
    Open online shop website
    Click SignIn button
    Click No account? Create one here link
    Select Social Title
    Fill the registration form
    Select mandatory checkboxes
    Click Save button
    Check logged in user name
    Logout from the website
    Exit the browser
    
Verify email used to register new account has not been used
    [Documentation]    User sees error message when used email has been typed in
    [Tags]    Smoke
    Open online shop website
    Click SignIn button
    Click No account? Create one here link
    Select Social Title
    Fill the registration form
    Select mandatory checkboxes
    Click Save button
    Verify email has been used
    Exit the browser