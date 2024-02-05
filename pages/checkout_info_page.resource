*** Settings ***
Documentation                          Keywords da página "CHECKOUT INFO"

Library                                SeleniumLibrary

*** Variables ***
${BTN_CHECKOUT}                        css=[data-test="checkout"]
${HEADER_CHECKOUT}                     css=.header_secondary_container
${INPUT_FIRST_NAME}                    css=[data-test="firstName"]
${INPUT_LAST_NAME}                     css=[data-test="lastName"]
${INPUT_POSTAL_CODE}                   css=[data-test="postalCode"]
${BTN_CONTINUE}                        css=[data-test="continue"]

*** Keywords ***
Entra no checkout
    Wait Until Page Contains Element   ${BTN_CHECKOUT}
    Click Element                      ${BTN_CHECKOUT}

Preenche o checkout
    Wait Until Element Is Visible      ${HEADER_CHECKOUT}
    Input Text       ${INPUT_FIRST_NAME}        Marco
    Input Text       ${INPUT_LAST_NAME}         Silva
    Input Text       ${INPUT_POSTAL_CODE}       06540-460   
    Click Element    ${BTN_CONTINUE}