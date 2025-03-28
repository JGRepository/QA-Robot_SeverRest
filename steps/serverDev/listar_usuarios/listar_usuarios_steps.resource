*** Settings ***
Resource    ../../../resources/serverDev/listar_usuarios/listar_usuarios.resource
Library    SeleniumLibrary

*** Keywords ***
sou redirecionado para a tela de lista de usuários
    Wait Until Element Is Visible     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}      timeout=15s
    ${text}    Get Text     ${LIST_USUARIO.TEXTO_APRESENTACAO.H1}
    Should Contain   ${text}   Lista dos usuários