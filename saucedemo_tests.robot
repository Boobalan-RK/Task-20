*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Test Case 1 - Valid Login
    Open Browser To Login Page
    Login To Application
    Verify Login Successful
    Close Browser Session


Test Case 2 - Invalid Login
    Open Browser To Login Page
    Invalid Login
    Verify Error Message
    Close Browser Session


Test Case 3 - Add Product To Cart
    Open Browser To Login Page
    Login To Application
    Add Product To Cart
    Go To Cart
    Page Should Contain    Sauce Labs Backpack
    Close Browser Session


Test Case 4 - Multiple Products Checkout
    Open Browser To Login Page
    Login To Application
    Add Multiple Products To Cart
    Go To Cart
    Proceed To Checkout
    Page Should Contain    Checkout: Overview
    Close Browser Session
