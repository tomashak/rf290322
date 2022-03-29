*** Variables ***
${input_field_search}=   //input[@id="search_product"]
${search_btn}=           //button[@id="submit_search"]

*** Keywords ***
Vyhledej
    [Documentation]  kw pro vyhledani, jeden vstupni argument
    [Arguments]  ${co_hledat}
    Wait Until Element Is Visible     ${input_field_search}
    Input Text                        ${input_field_search}    ${co_hledat}
    Click Element                     ${search_btn}
