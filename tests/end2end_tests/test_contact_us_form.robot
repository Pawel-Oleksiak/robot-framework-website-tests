*** Settings ***
Documentation    Test adding products to wishlist
Library          SeleniumLibrary
Resource         ../../resources/common.robot
Resource         ../../resources/contact_us_form_keywords.robot

*** Test Cases ***
Fill the Contact us form and send to site owner
    [Documentation]    User can fill the form to contact the site owner
    [Tags]    E2E
    Open online shop website
    Click SignIn button
    Input valid credentials and submit login
    Verify successful login
    Navigate to Contact us form
    Select Subject for the message
    Select Order reference
    Input the message
    Click Send button
    Verify message has been sent
    Logout from the website
    Exit the browser