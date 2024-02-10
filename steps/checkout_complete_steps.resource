*** Settings ***
Documentation                          Steps da tela de checkout - complete

Resource                               ../pages/checkout_complete_page.resource

*** Keywords ***
Então devo ter a mensagem de "Obrigado pelo seu pedido"
    Pedido finalizado