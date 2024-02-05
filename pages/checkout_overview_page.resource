*** Settings ***
Documentation                          Keywords da página "CHECKOUT OVERVIEW"

Library                                SeleniumLibrary

*** Variables ***
${BTN_FINISH}                          css=[data-test="finish"]

*** Keywords ***
Finaliza o checkout
    Wait Until Page Contains Element   ${BTN_FINISH}
    Click Element                      ${BTN_FINISH}