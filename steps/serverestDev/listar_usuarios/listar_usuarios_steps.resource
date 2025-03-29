*** Settings ***
Resource    ../../../resources/serverestDev/listar_usuarios/listar_usuarios.resource
Library    SeleniumLibrary

*** Keywords ***
sou redirecionado para a tela de lista de usuários
    Wait Until Element Is Visible     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}      timeout=15s
    ${text}    Get Text     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}
    Should Contain   ${text}   Lista dos usuários

meu usuário foi cadastrado com sucesso
    [Arguments]    ${EMAIL}
    ${ELEMENT}    Set Variable    //td[contains(.,'${EMAIL}')]
    Wait Until Element Is Visible     ${ELEMENT}      timeout=15s
    ${TEXTO}    Get Text     ${ELEMENT}
    Should Contain   ${TEXTO}  ${EMAIL}