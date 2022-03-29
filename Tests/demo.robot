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
    Open Excel  Data/input.xls
    ${co_hledam}=  read cell data by name  Sheet1  A2
    ${co_kontroluju}=  read cell data by name  Sheet1  B2
    Vyhledej    ${co_hledam}
    Zkontroluj  ${co_kontroluju}
    
    
Test demo shop - Top
    [Documentation]  Nejaka dokumentace test demo shop TC, ABC-123,
    ...  druhyradek dokumentace
    ...  treti radek
    [Tags]  debug  only_linux
    Vyhledej    Top
    Zkontroluj  Top
    