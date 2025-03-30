*** Settings ***
Resource    ../../../steps/settings_steps.resource
Resource    ../../../API/serverestDev/steps/cadastro_usuario_api_steps.resource
Resource    ../../../common/commons.resource

Test Setup    eu acesso o site
Test Teardown    fechar Browser

*** Test Cases ***

Verifica o cadastro de usuários na area logada
                Configurar usuário antes do inicio dos testes
    ${ID}       Enviar Requisição POST de Criação de Usuários

                
                Given eu preencha o campo NOME com o [valor]               ${EMAIL_CASDASTRADO}
                And eu preencha o campo SENHA com o [valor]               ${SENHA_CASDASTRADA} 
                And eu clique no botão ENTRAR
                And eu clico no item de MENU    CADASTRAR USUARIO    ${HOME.MENU_CADASTRAR_USUARIOS.BTN} 
                When eu preencho o campo NOME    ${CAD_USUARIO.NOME.INPUT}
    ${EMAIL}    And eu preencho o campo EMAIL    ${CAD_USUARIO.EMAIL.INPUT}
                And eu preencho o campo SENHA     ${CAD_USUARIO.SENHA.INPUT}
                And eu marco o checkbox de administrador   ${CAD_USUARIO.ADMIN.CHECKBOX} 
                And eu clico no botão CADASTRAR    ${CAD_USUARIO.CADASTRAR.BTN} 
                Then sou redirecionado para a tela LISTAR USUARIOS
                And meu usuário foi cadastrado com sucesso    ${EMAIL}

                Enviar Requisição DELETE de Excluir Usuários                       ${ID}

Verifica o cadastro de produtos na area logada

                Configurar usuário antes do inicio dos testes
    ${ID}       Enviar Requisição POST de Criação de Usuários

    Given eu preencha o campo NOME com o [valor]   ${EMAIL_CASDASTRADO}
    And eu preencha o campo SENHA com o [valor]   ${SENHA_CASDASTRADA} 
    And eu clique no botão ENTRAR
    And eu clico no item de MENU    CADASTRAR PRODUTO    ${HOME.MENU_CADASTRAR_PRODUTOS.BTN}
    And eu preencho o [CAMPO] de cadastro de produto     NOME           ${CAD_PRODUTO.NOME.INPUT}             ${NOME_PRODUTO}
    And eu preencho o [CAMPO] de cadastro de produto     PREÇO          ${CAD_PRODUTO.PRECO.INPUT}            ${PRECO_PRODUTO} 
    And eu preencho o [CAMPO] de cadastro de produto     DRESCRIÇÃO     ${CAD_PRODUTO.DESCRICAO.INPUT}        ${DESCRICAO_PRODUTO}  
    And eu preencho o [CAMPO] de cadastro de produto     QUANTIDADE     ${CAD_PRODUTO.QUANTIDADE.INPUT}       ${QUANTIDADE_PRODUTO}  
    And eu insiro uma imagem do produto
    When eu clico no botão CADASTRAR    ${CAD_PRODUTO.CADASTRAR.BTN}

                Enviar Requisição DELETE de Excluir Usuários                       ${ID}
Verificar o cadastro de usuários via SIGNUP
    
                Configurar usuário antes do inicio dos testes
    ${ID}       Enviar Requisição POST de Criação de Usuários

                Given Eu clico no botão CADASTRAR    ${LOGIN.CADASTRAR.BUTTON}
                When eu preencho o campo NOME    ${SIGNUP.NOME.INPUT}
    ${EMAIL}    And eu preencho o campo EMAIL    ${SIGNUP.EMAIL.INPUT} 
                And eu preencho o campo SENHA     ${SIGNUP.SENHA.INPUT}
                And eu marco o checkbox de administrador   ${SIGNUP.CADASTRAR.CHECKBOX} 
                When eu clico no botão CADASTRAR    ${SIGNUP.CADASTRAR.BUTTON}
                Then sou redirecionado para a tela HOME


                Enviar Requisição DELETE de Excluir Usuários                       ${ID}