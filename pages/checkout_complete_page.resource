*** Settings ***
Documentation                          Keywords da página "CHECKOUT COMPLETE"

Library                                SeleniumLibrary

*** Variables ***
${CHECKOUT_FINISH}                     css=.checkout_complete_container h2

*** Keywords ***
Pedido finalizado
    Wait Until Page Contains Element   ${CHECKOUT_FINISH}
    Element Text Should Be             ${CHECKOUT_FINISH}        Thank you for your order!