*** Settings ***
Documentation    Test adding address to the profile
Library          SeleniumLibrary
Resource         ../../resources/common.robot
Resource         ../../resources/add_address.robot

*** Test Cases ***
Add new address to the profile
    [Documentation]    User can add new delivery address
    [Tags]    E2E
    Open online shop website
    Click SignIn button
    Input valid credentials and submit login
    Verify successful login
    Click Addresses icon
    Click Create new address link
    Fill the form and click Save button
    Verify successfully added address
    Delete previously added address
    Verify successfully deleted address
    Logout from the website
    Exit the browser