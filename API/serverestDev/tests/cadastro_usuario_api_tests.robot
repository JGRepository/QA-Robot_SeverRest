*** Settings ***
Resource        ../steps/cadastro_usuario_api_steps.resource

*** Test Cases ***
Verificar comportamento CRUD das APIs 
    ${ID_ANTIGO}        Enviar Requisição GET de Lista de Usuários
                        Enviar Requisição DELETE de Excluir Usuários                       ${ID_ANTIGO}
    ${ID_NOVO}          Enviar Requisição POST de Criação de Usuários
                        Enviar Requisição PUT de Alteração de Usuário alternando o NOME    ${ID_NOVO}
                        Enviar Requisição DELETE de Excluir Usuários                       ${ID_NOVO}

Criar usuário
    Enviar Requisição POST de Criação de Usuários