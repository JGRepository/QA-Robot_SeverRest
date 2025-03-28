*** Variables ***


${LOGIN.EMAIL.INPUT}                                                    css=[data-testid="email"]
${LOGIN.SENHA.INPUT}                                                    css=[data-testid="senha"]
${LOGIN.ENTRAR.BUTTON}                                                  css=[data-testid="entrar"]
${LOGIN.CADASTRAR.BUTTON}                                               css=[data-testid="cadastrar"]

${LOGIN.EMAIL_ALERT.SPAN}                                               xpath=//span[contains(.,'Email é obrigatório')]
${LOGIN.SENHA_ALERT.SPAN}                                               xpath=//span[contains(.,'Password é obrigatório')]
