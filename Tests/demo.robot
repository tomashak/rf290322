*** Settings ***
Documentation  dokumentace cele suity, informace do jiry, confluence, link na data
...  druhy radek
Library      SeleniumLibrary
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
    Vyhledej    Dress
    Zkontroluj  Dress
    
    
Test demo shop - Top
    [Documentation]  Nejaka dokumentace test demo shop TC, ABC-123,
    ...  druhyradek dokumentace
    ...  treti radek
    [Tags]  debug  only_linux
    Vyhledej    Top
    Zkontroluj  Top
    