*** Settings ***
Resource  ../Resources/Common_Keywords.robot
Resource  ../Resources/Common_Login.robot

Test Setup  Open Browser Test Setup  https://my.askfractal.com/Login
Test Teardown  Close Browser Window


*** Test Cases ***
TC_01_Wrong Username And Password Are Entered
  [Documentation]  Test that users cannot login with wrong username and password-Wrong_Credentials
    [Tags]  Enter Login Page
        Enter Email  user1@gmail.com
        Enter Password  1234
        Login
        Check That Login Fails

TC_02_Empty Username Is Entered
    [Documentation]  Test that users cannot login with empty email
       [Tags]  Enter Login Page
        Enter Email  ${empty}
        Enter Password  1234
        Login
        Check The Required Fields

TC_03_Empty Password Is Entered
    [Documentation]  Test that users cannot login with empty password
        [Tags]  Enter Login Page
        Enter Email  user1@gmail.com
        Enter Password  ${empty}
        Login
        Check The Required Fields