# Testes . Automação 

Este projeto contempla a automação de testes do site ServeRest
Considerações iniciais:
Este projeto Utiliza a Biblioteca Selenium
Foi escolhida a biblioteca Selenium para criar a esteira de testes por se tratar de uma biblioteca mais popular e comum em testes WEB. Entretando o site oferece seletor data-testid, logo, uma opção seria utilizar a biblioteca BROWSER com auxilio do playwirght. Essa biblioteca tem suporte nativo a esse seletor e roda em base chromium que ajuda a ver comportamento mais básicos dos navegadores.

Também foi construído de forma mais simplista valorizando a criação de variáveis para aproveitar em iterações e deixar o código mais legível uma vez que estamos utilizando design patterns bem definido. Mas poderiamos trocar por um dicionário de dados, movendo as variáveis para um &{LOGIN} por exemplo.

As keywords foram estruturadas para receberem parâmetros e serem o mais reaproveitaveis possível dentro do código. E também estão descritas em formato que valoriza o GHERKIN / BDD.


####  Testes WEB
- Cadastro de usuário via SIGNUP
- Cadastro de usuário na área logada
- Cadastro de Produto

####  Testes API
- Verificar comportamento CRUD das APIs
- Criar usuário
- Apagar todos os usuários cadastrados da área logada
- Criar usuário e fazer login

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
