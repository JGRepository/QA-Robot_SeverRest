*** Settings ***
Resource    ../../../steps/serverDev/login/login_steps.resource
Resource    ../../../common/commons.resource

Test Setup    eu acesso o site
Test Teardown    fechar Browser



*** Test Cases ***
Verifica tentativa de login sem preencher os campos de email e senha

    Given eu preencha o campo NOME com o [valor]   ${EMPTY}
    And eu preencha o campo SENHA com o [valor]   ${EMPTY}
    When eu clique no botão ENTRAR
    Then alert de validação de email em branco