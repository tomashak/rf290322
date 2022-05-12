*** Settings ***
Documentation  dokumentace cele suity, informace do jiry, confluence, link na data
...  druhy radek
Library      SeleniumLibrary
Library      ExcelRobot

Resource     ../Resources/MainPage.robot
Resource     ../Resources/ResultPage.robot
Resource     ../Resources/common.robot

Test Setup       Prepare browser  
Test Teardown    Close All Browsers    


*** Test Cases ***
Test demo shop - Dress
    [Documentation]  Nejaka dokumentace test demo shop TC, ABC-123,
    ...  druhyradek dokumentace
    ...  treti radek
    [Tags]  smoke  regrese  api    
    Vyhledej    Top
    Zkontroluj  Top
    Go To    ${URL}
    
    
