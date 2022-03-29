*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test demo shop
    Open Browser    https://automationexercise.com/products  chrome
    sleep  3s    #duvod proc cekam
    Input Text    //input[@id="search_product"]    Dress
    sleep  1s
    Click Element    //button[@id="submit_search"]
    sleep  3s
    Close Browser