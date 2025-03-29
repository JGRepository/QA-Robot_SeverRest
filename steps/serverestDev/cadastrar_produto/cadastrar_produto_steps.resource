*** Settings ***
Resource    ../../../resources/serverestDev/cadastro_produtos/cadastro_produtos.resource
Resource    ../../../resources/serverestDev/assets/assets.resource
Resource    ../../../common/settings.resource

Library    SeleniumLibrary

*** Keywords ***

#Exemplo de outra forma de construir uma keyword, passando o nome do LOCAL em Arguments para evitar várias keywords parecidas.
eu preencho o [CAMPO] de cadastro de produto
    [Arguments]    ${CAMPO}    ${SELECTOR}    ${TEXTO}
    Wait Until Element Is Visible     ${SELECTOR}      timeout=15s
    Input Text    ${SELECTOR}     ${TEXTO}

eu insiro uma imagem do produto
    Choose File    ${CAD_PRODUTO.IMAGEM.INPUT}    ${IMAGEM_PATH}

