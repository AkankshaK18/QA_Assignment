*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Enter Email
    [Arguments]  ${email}
    wait until page contains element  id:email
    Input Text  id:email  ${email}

Enter Password
    [Arguments]  ${password}
    wait until page contains element  id:password
    Input Text  id:password  ${password}

Login
    Click Element  xpath://*[@type='submit']

Check That Login Fails
    Set Selenium Implicit Wait  10
    Page Should Contain  We couldn't find an account with that username and password
    Log  Login Fail Test

Check The Required Fields
    Set Selenium Implicit Wait  10
    Page Should Contain  Required field
    Log  Login Fail Test