*** Settings ***
Resource    ../../api_assets/api_settings.resource
Library  JSONLibrary

Library  RequestsLibrary


*** Keywords ***

Enviar Requisição POST de Criação de Usuários
    [Documentation]  Envia Requisição GET de Lista de Usuários
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${payload}=  Load JSON From File  ${CRIAR_USUARIO.JSON} 
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${RESPONSE}=  POST  ${BASE_URL}${URI.USUARIOS}   json=${payload}  headers=${headers}     expected_status=201
    Log  ${RESPONSE.json()}
    Should Be Equal    ${RESPONSE.json()}[message]    Cadastro realizado com sucesso
    RETURN  ${RESPONSE.json()}[_id]


Enviar Requisição GET de Lista de Usuários
    [Documentation]  Envia Requisição GET de Lista de Usuários
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${EMAIL}  Load JSON From File  ${CRIAR_USUARIO.JSON} 
    ${PARAMS}     Create Dictionary    email=${EMAIL}[email]
    ${RESPONSE}  GET   ${BASE_URL}${URI.USUARIOS}    params=${PARAMS}    expected_status=200
    Log  ${response.json()}
    RETURN    ${response.json()}


Enviar Requisição PUT de Alteração de Usuário alternando o NOME
    [Documentation]  Envia Requisição PUT de Alteração de Usuário alternando o NOME
    [Arguments]    ${ID_USUARIO}
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${payload}  Load JSON From File  ${ATUALIZAR_USUARIO.JSON} 
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${RESPONSE}=  PUT  ${BASE_URL}${URI.USUARIOS}/${ID_USUARIO}   json=${payload}  headers=${headers}     expected_status=200
    Log  ${response.json()}
    Should Be Equal    ${RESPONSE.json()}[message]    Registro alterado com sucesso
    RETURN    ${response.json()}

Enviar Requisição DELETE de Excluir Usuários
    [Documentation]  Envia Requisição DELETE de Excluir Usuários
    [Arguments]    ${ID_USUARIO}
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${RESPONSE}=  DELETE  ${BASE_URL}${URI.USUARIOS}/${ID_USUARIO}  expected_status=200
    Log  ${RESPONSE.json()}
        Should Be Equal    ${RESPONSE.json()}[message]    Registro excluído com sucesso


