*** Settings ***
Resource    settings.resource

Library    SeleniumLibrary

*** Keywords ***
eu acesso o site

    Open Browser    ${URL_SERVERDEV}    ${BROWSER}     

fechar Browser
    Close Browser
