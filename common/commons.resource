*** Settings ***
Resource    settings.resource

Library    SeleniumLibrary
Library    FakerLibrary
Library    libs/user_id_generator.py

*** Keywords ***
eu acesso o site

    Open Browser     ${URL_serverestDev}    ${BROWSER}     options=add_argument("${HEADLESS} --start-fullscreen")

fechar Browser
    Close Browser

eu clico no botão CADASTRAR
    [Arguments]    ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}     timeout=30s
    Click Element   ${SELECTOR}

eu preencho o campo NOME
    [Arguments]    ${SELECTOR}
    ${NOME_FAKER}    FakerLibrary.first_name
    Set Global Variable     ${NOME_FAKER}
    Wait Until Element Is Visible      ${SELECTOR}     timeout=30s
    Input Text     ${SELECTOR}     ${PREFIXO_NOME_USUARIO}${NOME_FAKER}
    RETURN    

eu preencho o campo EMAIL
    [Arguments]    ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}     timeout=30s
    ${USER_ID}    user_id_generator    ${NOME_FAKER}
    Input Text     ${SELECTOR}    ${USER_ID}@qateste.com.br
    RETURN    ${USER_ID}@qateste.com.br
   

eu preencho o campo SENHA
   [Arguments]    ${SELECTOR}
   Wait Until Element Is Visible     ${SELECTOR}     timeout=30s
   Input Text    ${SELECTOR}     teste

eu marco o checkbox de administrador
    [Arguments]    ${SELECTOR}
    Click Element    ${SELECTOR}

