*** Settings ***
Resource    ../../../resources/serverestDev/home/home.resource
Library    SeleniumLibrary

*** Keywords ***
eu clico no item de MENU
    [Arguments]   ${ELEMENT}     ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}    timeout=30s
    Click Element     ${SELECTOR}
