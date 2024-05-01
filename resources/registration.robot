*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Variables ***
${first-name}    Michelle
${last-name}     Karrab
${email}         barrack@luli.usa
${password}      usanumba1

*** Keywords ***
Click No account? Create one here link
    Click Link    link:No account? Create one here

Select Social Title
#    Click Element    id:field-id_gender-1     # male
    Click Element    id:field-id_gender-2    # female

Fill the registration form
    Input Text    id:field-firstname    ${first-name}
    Input Text    id:field-lastname     ${last-name}
    Input Text    id:field-email        ${email}
    Input Text    id:field-password     ${password}
    
Select mandatory checkboxes
    Select Checkbox    name:customer_privacy
    Select Checkbox    name:psgdpr

Click Save button
    Click Button    css:.btn.btn-primary.form-control-submit

Check logged in user name
    Element Text Should Be    xpath://*[@id="_desktop_user_info"]/div/a[2]/span    ${first-name} ${last-name}