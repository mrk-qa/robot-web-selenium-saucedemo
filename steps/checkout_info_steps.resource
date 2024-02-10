*** Settings ***
Documentation                          Steps da tela de checkout - info

Resource                               ${CURDIR}/../pages/checkout_info_page.resource

*** Keywords ***
E preencho o checkout
    Entra no checkout
    Preenche o checkout