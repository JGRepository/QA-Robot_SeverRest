*** Settings ***
Resource    ../../../resources/serverestDev/cadastro_usuarios/cadastro_usuarios.resource
Resource    ../../../common/settings.resource

Library    ../../../common/libs/user_id_generator.py
Library    SeleniumLibrary
Library    FakerLibrary

*** Keywords ***
# eu preencho o campo NOME
#     [Arguments]    ${SELECTOR}
#     ${NOME_FAKER}    FakerLibrary.first_name
#     Set Global Variable     ${NOME_FAKER}
#     Wait Until Element Is Visible     ${CAD_USUARIO.NOME.INPUT}     timeout=30s
#     Input Text    ${CAD_USUARIO.NOME.INPUT}     ${PREFIXO_NOME_USUARIO}${NOME_FAKER}
#     RETURN    

# eu preencho o campo EMAIL
#     Wait Until Element Is Visible     ${CAD_USUARIO.EMAIL.INPUT}     timeout=30s
#     ${USER_ID}    user_id_generator    ${NOME_FAKER}
#     Input Text     ${CAD_USUARIO.EMAIL.INPUT}    ${USER_ID}@qateste.com.br
#     RETURN    ${USER_ID}@qateste.com.br
   

# eu preencho o campo SENHA
#    Wait Until Element Is Visible     ${CAD_USUARIO.SENHA.INPUT}     timeout=30s
#    Input Text    ${CAD_USUARIO.SENHA.INPUT}     teste

# eu marco o checkbox de administrador
#     Click Element    ${CAD_USUARIO.ADMIN.CHECKBOX} 

