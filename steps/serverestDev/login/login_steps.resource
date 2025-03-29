*** Settings ***
Resource    ../../../resources/serverestDev/login/login.resource
Library           SeleniumLibrary




*** Keywords ***


eu preencha o campo NOME com o [valor]
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${LOGIN.EMAIL.INPUT}     timeout=15s
    Input Text    ${LOGIN.EMAIL.INPUT}    ${value}

eu preencha o campo SENHA com o [valor]
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${LOGIN.SENHA.INPUT}     timeout=15s
    Input Text    ${LOGIN.SENHA.INPUT}    ${value}

eu clique no botão ENTRAR
    Wait Until Element Is Visible    ${LOGIN.ENTRAR.BUTTON}      timeout=15s
    Click Button    ${LOGIN.ENTRAR.BUTTON}

alert de validação de email em branco
    Wait Until Element Is Visible     ${LOGIN.EMAIL_ALERT.SPAN}      timeout=15s
    ${TEXTO}    Get Text     ${LOGIN.EMAIL_ALERT.SPAN}
    Should Contain   ${TEXTO}   Email é obrigatório
   