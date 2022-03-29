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
    ${pocet_radku}=  get row count  Sheet1
    FOR  ${i}  IN RANGE  2  ${pocet_radku+1}
        ${co_hledam}=  read cell data by name  Sheet1  A${i}
        ${co_kontroluju}=  read cell data by name  Sheet1  B${i}
        run keyword and continue on failure  Vyhledej    ${co_hledam}
        run keyword and continue on failure  Zkontroluj  ${co_kontroluju}
        Go To    ${URL}
    END
    
    
