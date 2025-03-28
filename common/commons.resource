*** Settings ***
Resource    settings.resource

Library    SeleniumLibrary

*** Keywords ***
eu acesso o site

    Open Browser    ${URL_SERVERDEV}    ${BROWSER}     

fechar Browser
    Close Browser

eu clico no botão CADASTRAR
    [Arguments]    ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}     timeout=15s
    Click Button   ${SELECTOR}