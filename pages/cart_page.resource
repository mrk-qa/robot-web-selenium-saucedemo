*** Settings ***
Documentation                          Keywords da página "CART"

Library                                SeleniumLibrary

*** Variables ***
${ICON_CART}                           id=shopping_cart_container
${LIST_CART_ITEMS}                     css=.cart_item

*** Keywords ***
Entra no carrinho
    Wait Until Page Contains Element   ${ICON_CART}
    Click Element                      ${ICON_CART}

Valida itens no carrinho
    Wait Until Element Is Visible      ${LIST_CART_ITEMS}
    ${count}     Get Element Count     ${LIST_CART_ITEMS}
    Should Be True	${count} == 3
    