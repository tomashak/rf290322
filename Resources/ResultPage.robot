*** Variables ***
${result_search_h2}=     //h2[contains(@class,"title")][contains(text(),"Searched Products")]

*** Keywords ***
Zkontroluj
    [Documentation]  lorem ipsum 
    [Arguments]  ${co_kontrolovat}
    Wait Until Element Is Visible     ${result_search_h2}
    ${url_after}=                     Get Location
    Location Should Contain           ${co_kontrolovat}    message=V url mel byt string co vyhledavam. URL bylo: ${url_after}
    Capture Page Screenshot