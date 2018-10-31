*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/ResourceAccess.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window

*** Variables ***


*** Test Cases ***

TC01_CreateBusiness_Valid Input
    Login  prisemil12345@gmail.com  Presty#12345
    Wait Time
    Click Link  link=Add a Business
    Input_Text  id:name  Company1
    Input_Text  id:website  www.company1.com
    Input_Text  id:city  Louisville, KY, USA
    Wait Time
    Click Element  xpath://div[@class="PlacesContainer__dropdownContainer"]
    Input_Text  id:description  Sample Text for Create Business Test
    Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chain Move To Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chains Perform Now
    Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div[2]/div[5]
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    Click Element  xpath:/html/body/div[6]/div/div/div[1]/span/button
    Wait Time
    ${PageTitle}=  Page Title
    Log  ${PageTitle}

TC02_CreateBusiness_Skip Input Fields
    Login  prisemil12345@gmail.com  Presty#12345
    Wait Time
    Click Link  link=Add a Business
    #Input_Text  id:name
    Input_Text  id:website  www.company1.com
    #Input_Text  id:city
    Wait Time
    #Click Element  xpath://div[@class="PlacesContainer__dropdownContainer"]
    Input_Text  id:description  Sample Text for Create Business Test
    #Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chain Move To Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chains Perform Now
   # Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div[2]/div[5]
    #Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    ${PageTitle}=  Page Title
    Log  ${PageTitle}
    Page should contain  Required field


TC03_CreateBusiness_Invalid Input Fields
    Login  prisemil12345@gmail.com  Presty#12345
    Wait Time
    Click Link  link=Add a Business
    Input_Text  id:name  1234
    Input_Text  id:website  company1dotcom
    Input_Text  id:city  Louisville, KY, USA
    Wait Time
    Click Element  xpath://div[@class="PlacesContainer__dropdownContainer"]
    Input_Text  id:description  Sample Text for Create Business Test
    Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chain Move To Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chains Perform Now
    Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div[2]/div[5]
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    Click Element  xpath:/html/body/div[6]/div/div/div[1]/span/button
    Wait Time
    ${PageTitle}=  Page Title
    Log  ${PageTitle}




