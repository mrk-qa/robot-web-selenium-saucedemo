*** Settings ***
Documentation                          [WEB] Testes relacionados ao login

Resource                               ../steps/login_steps.resource
Resource                               ../steps/products_steps.resource
Resource                               ../setup.resource

Test Setup                             Nova Sessão
Test Teardown                          Encerra Sessão

*** Test Cases ***
[CT01] Realizar login com sucesso
    Dado que acesso o website
    Quando adiciono as credenciais de usuario    standard_user
    E adiciono a senha                 secret_sauce
    E clico no botão de login
    Então devo visualizar a página de Produtos

[CT02] Realizar login sem sucesso
    Dado que acesso o website
    Quando adiciono as credenciais de usuario    standard_user
    E adiciono a senha                 secret_test
    E clico no botão de login
    Então devo visualizar a mensagem de erro
