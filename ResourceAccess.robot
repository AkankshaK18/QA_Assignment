*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/TestKeywords.py

*** Variables ***
${URL}  https://my.askfractal.com/login
${Browser}  Chrome


*** Keywords ***
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Close Browser Window
    Close Browser

Page Title
    ${Title}=  Get Title
    [Return]  ${Title}

Login
    [Arguments]  ${username}  ${password}
    Input Text  id:email  ${username}
    Input Text  id:password  ${password}
    Click Element  xpath://*[@type='submit']

Wait Time
    wait

Test Status
    log  "Test Successful"