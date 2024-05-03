*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Variables ***
${ALIAS}         Extra Address
${ADDRESS}       Testing Street 201
${CITY}          Testney
${POST_CODE}     201-201
${PHONE}         201 404 201
${ELEMENTS}
${SECOND_ELEMENT}

*** Keywords ***
Click Addresses icon
    Click Element    xpath://*[@id="addresses-link"]/span

Click Create new address link
    Click Link    xpath://*[@id="content"]/div[3]/a

Fill the form and click Save button
    Input Text    id:field-alias        ${ALIAS}
    Input Text    id:field-address1     ${ADDRESS}
    Input Text    id:field-city         ${CITY}
    Input Text    id:field-postcode     ${POST_CODE}
    Input Text    id:field-phone        ${PHONE}
    Click Button  css:.btn.btn-primary.form-control-submit

Verify successfully added address
    Element Text Should Be    css:.alert.alert-success    Address successfully added!

Delete previously added address
    ${ELEMENTS}=    Get WebElements    xpath://a[@data-link-action='delete-address']
    ${SECOND_ELEMENT}=    Set Variable    ${ELEMENTS}[1]
    Click Element   ${SECOND_ELEMENT}

Verify successfully deleted address
    Element Text Should Be    css:.alert.alert-success    Address successfully deleted!
