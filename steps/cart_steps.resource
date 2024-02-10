*** Settings ***
Documentation                          Steps da tela de carrinho

Resource                               ${CURDIR}/../pages/cart_page.resource

*** Keywords ***
E verifico o carrinho
    Entra no carrinho
    Valida itens no carrinho