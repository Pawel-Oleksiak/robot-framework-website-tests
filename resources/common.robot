*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Variables ***
${URL}           https://mystore-testlab.coderslab.pl/index.php
${BROWSER}       Chrome
${USERNAME}      jaydoe@fake.com
${PASSWORD}      12344321

*** Keywords ***
Open online shop website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    mystore-testlab.coderslab.pl

Click SignIn button
    Click Element      xpath://div[@class='user-info']/a

Input valid credentials and submit login
    Input Text         id:field-email        ${USERNAME}
    Input Text         id:field-password     ${PASSWORD}
    Click Button       id:submit-login

Input invalid credentials and submit login
    Input Text         id:field-email        ${USERNAME}
    Input Text         id:field-password     fakepass
    Click Button       id:submit-login

Verify successful login
    Title Should Be    My account

Verify failed attempt
    Element Text Should Be      css:li.alert.alert-danger    Authentication failed.

Logout from the website
    Click Element    css:.logout.hidden-sm-down

Exit the browser
    Close Browser

Navigate to profile
    Click Element    xpath://*[@id="_desktop_user_info"]/div/a[2]/span