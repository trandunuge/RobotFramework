*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    I am inside the Test Suite
Suite Teardown    Log    I am inside the Test Suite Teardown
Test Setup    Log    I am inside the Test Case
Test Teardown   Log    I am inside the Test Case Teardown 
Default Tags    Sanity

*** Test Cases ***
MyFirstTest
   [Tags]    Smoke 
   Log     Hello World...

MySecondTest
   Log     Hello World...
   Set Tags    Regression 1
   Remove Tags    Regression 1
MyThirdTest
   Log     Hello World...    
 
    
    

    # *** Variables ***

    # *** Keywords ***
# UserLogin
    # Open Browser    ${url}    Chrome
    # Set Browser Implicit Wait    15
    # Input Text    id=txtUsername   @{credential}[0]  
    # Input Text    id=txtPassword   &{Logindata}[password]           