# Testes . Automação 

Este projeto contempla a automação de testes do site ServeRest
- _Consultando Serviços a serem testados

Teste de API para:
- _Consultando Serviços a serem testados_

### SUMÁRIO
- [🤓 Começando](#-começando)
  - [📦🐍Configure o ambiente virtual Python e instale suas dependências](#-configure-o-ambiente-virtual-python-e-instale-suas-depend%C3%AAncias)
- [📊 Pipeline](#-pipeline)
- [⛓️ Arquitetura](#%EF%B8%8F-arquitetura)
- [🧩 Padrões e boas práticas](#-padrões-e-boas-práticas)
- [🛠️ Utilitários](#%EF%B8%8F-utilitários)
  - [Ferramentas para Desenvolvimento](#ferramentas-para-desenvolvimento)
  - [Plugins obrigatórios](#plugins-obrigatórios)
  - [Plugins opcionais](#plugins-opcionais)
- [📚 Referências](#-referências)
- [❓ FAQ](#-faq)

### 🚀 Começando
Já começando com boas práticas, sugerimos trabalhar com o projeto em ambiente virtual. Embora você atue somente em um projeto, essa prática pode trazer benefícios a longo prazo, considerando que podemos expandir nossa atuação e colaborar com outros QAs. Assim, podemos garantir isolamento de dependências, evitar conflitos entre projetos, portabilidade, reprodutibilidade e facilidade de limpeza. 

Para garantir a configuração correta, você pode seguir em ordem os tópicos e steps abaixo. Belezinha?


#### 📦🐍 Configure o ambiente virtual Python e instale suas dependências

1. Instalar o Python: [Download - Python](https://www.python.org/downloads/)
2. Acessar o diretório do projeto
3. Criar o ambiente virtual Python:
   3.1. **Windows**
      ```powershell
      py -m venv venv
      ```
   3.2. **Linux**
      ```bash
      python3 -m venv venv
      ```
4. Ativar o ambiente virtual Python:
   4.1. **Windows**
      ```powershell
      ./venv/Scripts/activate
      ```
   4.2. **Linux**
      ```bash
      source venv/bin/activate
      ```
5. Instalar requisitos:
      ```bash
      pip install -r requirements.txt
      ```


### 📊 Pipeline
_(explicar a Pipeline utilizada)_

## ⛓️ Arquitetura
_(explicar a arquitetura utilizada)_

## 🧩 Padrões e boas práticas
>  Não custa lembrar logo alguns pontos básicos:
> - nome dos arquivo e pastas no padrão_snake_case (separados por \_)
> - variáveis sempre UPPER_CASE
> - nomenclatura de componentes: NOME_DA_PAGINA.NOME_DO_ELEMENTO.TIPO_DO_ELEMENTO. Ex: CADASTRO_ALUNOS.SAVE.BUTTON
> - encapsulamento das variáveis seguindo o fluxo de POM (resources -> steps -> tests)
> - utilizar a tag **[Setup]** e **[Teardown]** para iniciar e finalizar um teste ou suíte de testes

## 🛠️ Utilitários

#### Ferramentas para Desenvolvimento
- [x] IDE sugerida: [VS Code](https://code.visualstudio.com/download)
- [x] Terminal sugerido: [Git Bash](https://git-scm.com/downloads)

#### Plugins obrigatórios
- [x] [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [x] [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
- [x] [Robot Framework Language Server](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)

#### Plugins opcionais
- [x] [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

## 📚 Referências
- [Robot](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
- [Requests Library](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html)

## ❓ FAQ 
> Dicas e dúvidas sobre o repositório base de automação com Selenium Library e sobre outros assuntos relacionados.

Sinta-se à vontade para adicionar novas dúvidas/soluções. Ah, caso não encontre direto no índice, um `ctrl+F` sempre ajuda. Pode não estar no título, mas pode estar dentro do documento.
