*** Settings ***
Documentation                          Keywords da página "HOME"

Library                                SeleniumLibrary

*** Variables ***
${CONTAINER_INVENTORY}                 id=inventory_container
${ADD_SAUCE_LABS_BACKPACK}             css=[data-test="add-to-cart-sauce-labs-backpack"]
${ADD_SAUCE_LABS_BOLT_TSHIRT}          css=[data-test="add-to-cart-sauce-labs-bolt-t-shirt"]
${ADD_SAUCE_LABS_ONESIE}               css=[data-test="add-to-cart-sauce-labs-onesie"]

*** Keywords ***
Verifica a página de Produtos
    Wait Until Page Contains Element   ${CONTAINER_INVENTORY}

Add Sauce Labs Backpack
    Wait Until Page Contains           Sauce Labs Backpack
    Click Element                      ${ADD_SAUCE_LABS_BACKPACK}

Add Sauce Labs Bolt T-Shirt
    Wait Until Page Contains           Sauce Labs Bolt T-Shirt
    Click Element                      ${ADD_SAUCE_LABS_BOLT_TSHIRT}

Add Sauce Labs Onesie
    Wait Until Page Contains           Sauce Labs Onesie
    Click Element                      ${ADD_SAUCE_LABS_ONESIE}