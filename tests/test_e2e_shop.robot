*** Settings ***
Documentation    Test e2e shopping procedure
Library          SeleniumLibrary
Resource         ../resources/login_keywords.robot
Resource         ../resources/shopping_procedure_keywords.robot

*** Test Cases ***
Add product to the shopping cart and go through the shopping procedure
    [Documentation]    User can choose size, add product to shopping cart and finish order procedure
    [Tags]    E2E
    Open online shop website
    Click SignIn button
    Input valid credentials and submit login
    Verify successful login
    Click My Store logo to navigate to main page
    Click the Hummingbird Printed Sweater product
    Verify the 20% discount
    Choose size M
    Click Add to cart button and take the screenshot of the order
    Click Proceed to checkout button
    Click Proceed to checkout button again
    Choose address and click Continue button
    Change the Shipping method to My Carrier and click Continue button
    Choose Pay by bank wire, check the Terms of Service box and click Place order button
    Take a screenshot of confirmed order
    Logout from the website
    Exit the browser

