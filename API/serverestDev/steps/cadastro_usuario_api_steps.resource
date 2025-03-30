*** Settings ***
Resource    ../../api_assets/api_settings.resource
Resource    ../../../common/settings.resource

Library  JSONLibrary
Library  RequestsLibrary
Library    Collections


*** Keywords ***

Enviar Requisição POST de Criação de Usuários
    [Documentation]  Envia Requisição GET de Lista de Usuários
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${payload}=  Load JSON From File  ${CRIAR_USUARIO.JSON} 
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${RESPONSE}=  POST  ${BASE_URL}${URI.USUARIOS}   json=${payload}  headers=${headers}     expected_status=anything 
    Log  ${RESPONSE.json()}
    ${JSON_CONTENT}    Set Variable   ${RESPONSE.json()}
    ${JSON_MESSAGE}    Set Variable   ${RESPONSE.json()}[message]


    IF   ($JSON_MESSAGE == "Cadastro realizado com sucesso")
          Log     Cadastro realizado com sucesso
          ${ID_USUARIO}=  Get From Dictionary  ${JSON_CONTENT}  _id  default=None
          RETURN    ${ID_USUARIO}

    ELSE IF    ($JSON_MESSAGE == "Este email já está sendo usado")
            log    Este email já está sendo usado
            RETURN    ${JSON_MESSAGE}

    ELSE
        Fail    A resposta não contém as mensagens esperadas.
    END


Enviar Requisição GET de Lista de Usuários
    [Documentation]  Envia Requisição GET de Lista de Usuários
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${EMAIL}  Load JSON From File  ${CRIAR_USUARIO.JSON} 
    ${PARAMS}     Create Dictionary    email=${EMAIL}[email]
    ${RESPONSE}  GET   ${BASE_URL}${URI.USUARIOS}    params=${PARAMS}    expected_status=200
    Log  ${response.json()}

    ${JSON_CONTENT}     set Variable    ${response.json()}
    ${JSON_QUANTIDADE}     set Variable    ${response.json()}[quantidade]
    IF    ${JSON_QUANTIDADE} != 0
          ${USUARIOS}  Get From Dictionary  ${JSON_CONTENT}  usuarios  
          ${ID_USUARIO}  Get From Dictionary  ${USUARIOS[0]}  _id
          RETURN    ${ID_USUARIO}
    ELSE
        RETURN    teste
    END


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
    ${JSON_CONTENT}     set Variable    ${response.json()}
    ${JSON_MESSAGE}    Set Variable    ${RESPONSE.json()}[message]

  IF   ($JSON_MESSAGE == "Registro excluído com sucesso")
          Log     Registro excluído com sucesso
          RETURN    Registro excluído com sucesso

    ELSE IF    ($JSON_MESSAGE == "Nenhum registro excluído")
            log    Nenhum registro excluído
            RETURN    Nenhum registro excluído

    ELSE
        Fail    A resposta não contém as mensagens esperadas.
    END

Configurar usuário antes do inicio dos testes
    ${ID_ANTIGO}        Enviar Requisição GET de Lista de Usuários
                        Enviar Requisição DELETE de Excluir Usuários                       ${ID_ANTIGO}
    ${ID_NOVO}          Enviar Requisição POST de Criação de Usuários
                        Enviar Requisição PUT de Alteração de Usuário alternando o NOME    ${ID_NOVO}
                        Enviar Requisição DELETE de Excluir Usuários                       ${ID_NOVO}


Enviar Requisição GET de Lista de Usuários por nome
    [Documentation]  Envia Requisição GET de Lista de Usuários por nome
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${PARAMS}     Create Dictionary    nome=${PREFIXO_NOME_USUARIO} 
    ${RESPONSE}  GET   ${BASE_URL}${URI.USUARIOS}    params=${PARAMS}    expected_status=200
    ${JSON_CONTENT}     set Variable    ${response.json()}
    Log  ${JSON_CONTENT}
    RETURN  ${JSON_CONTENT}

Enviar Requisição DELETE de Excluir TODOS Usuários
     [Documentation]  Envia Requisição DELETE para excluir todos os usuários.
    [Arguments]    ${JSON_CONTENT}
    
    Log    ${JSON_CONTENT}  
    @{USUARIOS}=  Get From Dictionary  ${JSON_CONTENT}  usuarios
    
    FOR  ${USUARIO}  IN  @{USUARIOS}
       ${ID_USUARIO}=  Get From Dictionary  ${USUARIO}  _id
       Log  ID do Usuário: ${ID_USUARIO}
        ${RESPONSE}=  DELETE  ${BASE_URL}${URI.USUARIOS}/${ID_USUARIO}  expected_status=200
       Log  Status da resposta: ${RESPONSE.status_code}
       Log  Resposta: ${RESPONSE.content.decode("utf-8")}
    END
    
Enviar requisição POST de Realizar Login
    [Documentation]  Envia Requisição POST de Realizar Login
    Create Session  SERVEREST  ${BASE_URL}    timeout=15
    ${payload}  Load JSON From File  ${REALIZAR_CADASTRO.JSON} 
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${RESPONSE}=  POST  ${BASE_URL}${URI.LOGIN}   json=${payload}  headers=${headers}     expected_status=200
    ${JSON_CONTENT}     set Variable    ${response.json()}
    Log   ${JSON_CONTENT}
    Should Be Equal    ${JSON_CONTENT}[message]    Login realizado com sucesso
    RETURN     ${JSON_CONTENT}