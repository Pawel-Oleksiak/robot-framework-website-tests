*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Keywords ***
Select Subject for the message
    Select From List By Value    id:id_contact   2

Select Order reference
    Select From List By Value    id:id-order    6712

Input the message
    Input Text    id:contactform-message    Hi, this is test message to check the Contact Us form. Have a nice day :)

Click Send button
    Click Button    css:.btn.btn-primary
    
Verify message has been sent
    Element Text Should Be    xpath://*[@id="content"]/section/form/div/ul/li    Your message has been successfully sent to our team.
