*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/ResourceAccess.robot
Test Setup  Start Browser and Maximize
#Test Teardown  Close Browser Window


*** Variables ***


*** Test Cases ***

TC04_UpdateBusiness_Valid Input
    Login  prisemil12345@gmail.com  Presty#12345
    Wait Time
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[1]/div/div/span[1]/span[1]/button
    Clear Element Text  id:name
    Input_Text  id:name  Company1_edit
    Clear Element Text  id:website
    Input_Text  id:website  www.company2.com
    #Input_Text  id:city  Louisville, KY, USA
    #Wait Time
    #Click Element  xpath://div[@class="PlacesContainer__dropdownContainer"]
    #Input_Text  id:description  Sample Text for Create Business Test
    #Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chain Move To Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chains Perform Now
    #Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div[2]/div[5]
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    #Click Element  xpath:/html/body/div[6]/div/div/div[1]/span/button
    Wait Time
    ${PageTitle}=  Page Title
    Log  ${PageTitle}

TC05_UpdateBusiness_Skip Input Fields
    Login  prisemil12345@gmail.com  Presty#12345
    Wait Time
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[1]/div/div/span[1]/span[1]/button
    Clear Element Text  id:name
    #Input_Text  id:name  Company1_edit
    #Clear Element Text  id:website
    #Input_Text  id:website  www.company2.com
    #Input_Text  id:city  Louisville, KY, USA
    #Wait Time
    #Click Element  xpath://div[@class="PlacesContainer__dropdownContainer"]
    #Input_Text  id:description  Sample Text for Create Business Test
    #Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chain Move To Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div/div
    #Chains Perform Now
    #Click Element  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[6]/div/div/div/div[2]/div[5]
    Click Button  xpath:/html/body/div[1]/div/div/div/div[1]/main/div/div[2]/form/div[8]/div/div/button
    Wait Time
    #Click Element  xpath:/html/body/div[6]/div/div/div[1]/span/button
    #Wait Time
    #${PageTitle}=  Page Title
    #Log  ${PageTitle}
    Page should contain  Required Field
