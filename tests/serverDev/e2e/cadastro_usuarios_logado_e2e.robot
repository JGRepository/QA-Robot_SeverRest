*** Settings ***
Resource    ../../../steps/serverDev/login/login_steps.resource
Resource    ../../../steps/serverDev/home/home_steps.resource
Resource    ../../../steps/serverDev/cadastrar_usuario/cadastrar_usuario.resource
Resource    ../../../steps/serverDev/listar_usuarios/listar_usuarios_steps.resource
Resource    ../../../common/commons.resource

Test Setup    eu acesso o site
Test Teardown    fechar Browser

*** Test Cases ***

Verifica o cadastro de usuários na area logada
    Given eu preencha o campo NOME com o [valor]   ${EMAIL_CASDASTRADO}
    And eu preencha o campo SENHA com o [valor]   ${SENHA_CASDASTRADA} 
    And eu clique no botão ENTRAR
    And eu clico no item de MENU    CADASTRAR USUARIO    ${HOME.MENU_CADASTRAR_USUARIOS.BTN} 
    When eu preencho o campo NOME
    And eu preencho o campo EMAIL
    And eu preencho o campo SENHA
    And eu marco o checkbox de administrador
    And eu clico no botão CADASTRAR
    Then sou redirecionado para a tela de lista de usuários