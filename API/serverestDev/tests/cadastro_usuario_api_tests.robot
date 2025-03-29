*** Settings ***
Resource        ../steps/cadastro_usuario_api_steps.resource

*** Test Cases ***
Verificar comportamento CRUD das APIs 
    ${ID}   Enviar Requisição POST de Criação de Usuários
            Enviar Requisição GET de Lista de Usuários
            Enviar Requisição PUT de Alteração de Usuário alternando o NOME    ${ID}
            Enviar Requisição DELETE de Excluir Usuários                       ${ID}