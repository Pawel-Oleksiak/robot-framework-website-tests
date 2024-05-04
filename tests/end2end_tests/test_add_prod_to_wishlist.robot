*** Settings ***
Documentation    Test adding products to wishlist
Library          SeleniumLibrary
Resource         ../../resources/common.robot
Resource         ../../resources/wishlist.robot
Resource         ../../resources/shopping_procedure_keywords.robot

*** Test Cases ***
Add products to wishlist
    [Documentation]    User can add products to wishlist
    [Tags]    E2E
    Open online shop website
    Click SignIn button
    Input valid credentials and submit login
    Verify successful login
    Click Wishlist icon
    Verify Wishlist is empty
    Click My Store logo to navigate to main page
    Add clothes to wishlist
    Navigate to Accessories category
    Add accessory to wishlist
    Navigate to profile
    Verify Wishlist is not empty
    Logout from the website
    Exit the browser