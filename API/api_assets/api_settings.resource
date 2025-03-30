*** Variables ***
${BASE_URL}                            https://serverest.dev
&{URI}
...    USUARIOS=/usuarios
...    LOGIN=/login

${CRIAR_USUARIO.JSON}                  ${CURDIR}\\api_cadastro_usuario.json
${ATUALIZAR_USUARIO.JSON}              ${CURDIR}\\api_atualizar_usuario.json
${REALIZAR_CADASTRO.JSON}              ${CURDIR}\\api_realizar_login.json
