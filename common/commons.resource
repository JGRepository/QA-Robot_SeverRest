*** Settings ***
Resource    settings.resource

Library    libs/webdriver.py
Library    SeleniumLibrary

*** Keywords ***
eu acesso o site

    Open Browser    ${URL_SERVERDEV}    ${BROWSER}     

fechar Browser
    Close Browser
