*** Settings ***
Resource    ../../../resources/serverestDev/listar_usuarios/listar_usuarios.resource
Resource    ../../../resources/serverestDev/home/home.resource
Library    SeleniumLibrary

*** Keywords ***
sou redirecionado para a tela HOME
    Wait Until Element Is Visible     ${HOME.TEXTO_APRESENTACAO.H1}      timeout=30s
    ${text}    Get Text     ${HOME.TEXTO_APRESENTACAO.H1}
    Should Contain   ${text}   Bem Vindo QATEST_

sou redirecionado para a tela LISTAR USUARIOS
    Wait Until Element Is Visible     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}      timeout=30s
    ${text}    Get Text     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}
    Should Contain   ${text}   Lista dos usuários
   
meu usuário foi cadastrado com sucesso
    [Arguments]    ${EMAIL}
    ${ELEMENT}    Set Variable    //td[contains(.,'${EMAIL}')]
    Wait Until Element Is Visible     ${ELEMENT}      timeout=30s
    ${TEXTO}    Get Text     ${ELEMENT}
    Should Contain   ${TEXTO}  ${EMAIL}