*** Settings ***
Documentation                          Steps da tela home

Resource                               ../pages/produts_page.resource

*** Keywords ***
Então devo visualizar a página de Produtos
    Verifica a página de Produtos

Quando adiciono produtos
    Add Sauce Labs Backpack
    Add Sauce Labs Bolt T-Shirt
    Add Sauce Labs Onesie