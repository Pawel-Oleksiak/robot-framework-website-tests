*** Settings ***
Documentation    Common Keywords
Library          SeleniumLibrary

*** Keywords ***
Click Wishlist icon
    Click Element    xpath://*[@id="wishlist-link"]/span/i

Verify Wishlist is empty
    Wait Until Element Is Visible    xpath://*[@id="content"]/div/ul/li/a/p
    Element Text Should Be    xpath://*[@id="content"]/div/ul/li/a/p/span    (0)

Add clothes to wishlist
    Click Element    xpath://*[@id="js-product-list"]/div[1]/div[2]/article/div/button/i
    Wait Until Element Is Visible    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p
    Click Element    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p

    Click Element    xpath://*[@id="js-product-list"]/div[1]/div[3]/article/div/button/i
    Wait Until Element Is Visible    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p
    Click Element    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p

Navigate to Accessories category
    Click Element    xpath://*[@id="category-6"]/a

Add accessory to wishlist
    Click Element    xpath://*[@id="js-product-list"]/div[1]/div[2]/article/div/button/i
    Wait Until Element Is Visible    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p
    Click Element    xpath://*[@id="footer"]/div[2]/div/div[1]/div[4]/div[1]/div/div/div[2]/div/ul/li/p
    
Verify Wishlist is not empty
    Click Element    xpath://*[@id="wishlist-link"]/span/i
    Wait Until Element Is Visible    xpath://*[@id="content"]/div/ul/li/a/p
    Element Text Should Be    xpath://*[@id="content"]/div/ul/li/a/p/span    (3)