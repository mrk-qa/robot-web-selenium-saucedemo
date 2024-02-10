*** Settings ***
Documentation                          [WEB] Testes relacionados a compra de produtos

Resource                               ${CURDIR}/../steps/login_steps.resource
Resource                               ${CURDIR}/../steps/products_steps.resource
Resource                               ${CURDIR}/../steps/cart_steps.resource
Resource                               ${CURDIR}/../steps/checkout_info_steps.resource
Resource                               ${CURDIR}/../steps/checkout_overview_steps.resource
Resource                               ${CURDIR}/../steps/checkout_complete_steps.resource
Resource                               ${CURDIR}/../setup.resource

Test Setup                             Nova Sessão
Test Teardown                          Encerra Sessão

*** Test Cases ***
[CT01] Realizar uma compra com sucesso
    Dado que acesso o website
    E realizo login com sucesso
    Quando adiciono produtos
    E verifico o carrinho
    E preencho o checkout
    E finalizo o checkout
    Então devo ter a mensagem de "Obrigado pelo seu pedido"
    