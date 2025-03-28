*** Settings ***
Resource    ../../../resources/serverDev/cadastro_usuarios/cadastro_usuarios.resource

Library    ../../../common/libs/user_id_generator.py
Library    SeleniumLibrary

*** Keywords ***
eu preencho o campo NOME
    [Arguments]   ${ELEMENT}     ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}    timeout=15s
    Click Button     ${SELECTOR}

eu preencho o campo EMAIL
    [Arguments]   ${ELEMENT}     ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}    timeout=15s
    Click Button     ${SELECTOR}

eu preencho o campo SENHA
    [Arguments]   ${ELEMENT}     ${SELECTOR}
    Wait Until Element Is Visible     ${SELECTOR}    timeout=15s
    Click Button     ${SELECTOR}