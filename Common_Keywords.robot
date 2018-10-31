*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome

*** Keywords ***

Open Browser Test Setup
    [Arguments]  ${URL}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window


Close Browser Window
    Close Browser