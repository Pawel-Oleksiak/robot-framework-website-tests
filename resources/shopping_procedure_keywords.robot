*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Variables ***

*** Keywords ***
Click My Store logo to navigate to main page
    Click Element    id:category-3

Click the Hummingbird Printed Sweater product
    Click Link       xpath://article[@data-id-product='2']//h2[@class='h3 product-title']//a

Verify the 20% discount
    Element Text Should Be    xpath://*[@id="main"]/div[1]/div[2]/div[1]/div[2]/div/span[2]    SAVE 20%

Choose size M
    Select From List By Value    id:group_1    2

Click Add to cart button and take the screenshot of the order
    Wait Until Element Is Enabled    css:#add-to-cart-or-refresh > div.product-add-to-cart.js-product-add-to-cart > div > div.add > button
    Click Element    css:#add-to-cart-or-refresh > div.product-add-to-cart.js-product-add-to-cart > div > div.add > button
    Wait Until Element Is Visible    id:myModalLabel    1    Not found
    Element Should Contain    id:myModalLabel     Product successfully added to your shopping cart
    Capture Page Screenshot    order.png

Click Proceed to checkout button
    Click Element   xpath://*[@id="blockcart-modal"]/div/div/div[2]/div/div[2]/div/div/a

Click Proceed to checkout button again
    Click Element    xpath://*[@id=\"main\"]/div/div[2]/div[1]/div[2]/div/a

Choose address and click Continue button
    Click Element    name:confirm-addresses

Change the Shipping method to My Carrier and click Continue button
    Click Element    id:delivery_option_6
    Click Element    name:confirmDeliveryOption

Choose Pay by bank wire, check the Terms of Service box and click Place order button
    Click Element    id:payment-option-2
    Click Element    id:conditions_to_approve[terms-and-conditions]
    Wait Until Element Is Enabled    css:.btn.btn-primary.center-block    1
    Click Button     css:.btn.btn-primary.center-block

Take a screenshot of confirmed order
    Capture Page Screenshot    confirmed_order.png
