*** Variables ***
${URL}=                  https://automationexercise.com/products
${BROWSER}=              chrome  #k cemu to je

*** Keywords ***
Prepare browser
    [Documentation]  dokumentace klicoveho slova, kde, jak, argumenty
    Open Browser  ${URL}    ${BROWSER}
    Maximize Browser Window    
