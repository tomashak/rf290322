*** Settings ***
Documentation  dokumentace cele suity, informace do jiry, confluence, link na data
...  druhy radek
Library  SeleniumLibrary

Test Setup  Prepare browser  
Test Teardown  Close All Browsers    

*** Keywords ***
Prepare browser
    [Documentation]  dokumentace klicoveho slova, kde, jak, argumenty
    Open Browser    https://automationexercise.com/products  chrome
    Maximize Browser Window    

*** Test Cases ***
Test demo shop - Dress
    [Documentation]  Nejaka dokumentace test demo shop TC, ABC-123,
    ...  druhyradek dokumentace
    ...  treti radek
    [Tags]  smoke  regrese  api
    Wait Until Element Is Visible    //input[@id="search_product"]
    Input Text    //input[@id="search_product"]    Dress
    Click Element    //button[@id="submit_search"]
    Wait Until Element Is Visible    //h2[contains(@class,"title")][contains(text(),"Searched Products")]
    ${url}   Get Location
    Location Should Contain    Dress  message=V url mel byt string co vyhledavam. URL bylo: ${url}
    Capture Page Screenshot    filename=kontrola_po_hledani-{index.png}
    
Test demo shop - Top
    [Documentation]  Nejaka dokumentace test demo shop TC, ABC-123,
    ...  druhyradek dokumentace
    ...  treti radek
    [Tags]  debug  only_linux
    Wait Until Element Is Visible    //input[@id="search_product"]
    Input Text    //input[@id="search_product"]    Top
    Click Element    //button[@id="submit_search"]
    Wait Until Element Is Visible    //h2[contains(@class,"title")][contains(text(),"Searched Products")]
    ${url}   Get Location
    Location Should Contain    Top  message=V url mel byt string co vyhledavam. URL bylo: ${url}
    