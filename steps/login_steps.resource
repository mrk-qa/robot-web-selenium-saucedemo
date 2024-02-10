*** Settings ***
Documentation                          Steps da tela de login

Resource                               ../pages/login_page.resource

*** Keywords ***
Dado que acesso o website
    Acessar website

Quando adiciono as credenciais de usuario
    [Arguments]        ${usuario}
    Add usuario ${usuario}

E adiciono a senha
    [Arguments]    ${senha}
    Add senha ${senha}

E clico no botão de login
    Botão de login

Então devo visualizar a mensagem de erro
    Visualização da mensagem de erro

E realizo login com sucesso
    Login com sucesso
