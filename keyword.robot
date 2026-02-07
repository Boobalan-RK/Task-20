*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/variables.py

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Application
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button

Verify Login Successful
    Page Should Contain Element    id=inventory_container

Invalid Login
    Input Text    id=user-name    invalid_user
    Input Text    id=password     wrong_password
    Click Button  id=login-button

Verify Error Message
    Page Should Contain Element    class=error-message-container

Add Product To Cart
    Click Button    id=add-to-cart-sauce-labs-backpack

Add Multiple Products To Cart
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-bike-light

Go To Cart
    Click Element    class=shopping_cart_link

Proceed To Checkout
    Click Button    id=checkout
    Input Text      id=first-name    Test
    Input Text      id=last-name     User
    Input Text      id=postal-code   600001
    Click Button    id=continue

Close Browser Session
    Close Browser
