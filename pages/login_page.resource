*** Settings ***
Documentation                          Keywords da página "LOGIN"

Library                                SeleniumLibrary

*** Variables ***
${CONTAINER_LOGIN}                     id=login_button_container
${INPUT_USERNAME}                      css=[data-test="username"]
${INPUT_PASSWORD}                      css=[data-test="password"]
${BTN_LOGIN}                           id=login-button
${MSG_ERROR}                           css=h3[data-test="error"]

*** Keywords ***
Acessar website
    Wait Until Page Contains Element   ${CONTAINER_LOGIN}

Add usuario ${usuario}
    Input Text     ${INPUT_USERNAME}   ${usuario}

Add senha ${senha}
    Input Text     ${INPUT_PASSWORD}   ${senha}

Botão de login
    Click Element                      ${BTN_LOGIN}

Visualização da mensagem de erro
    Wait Until Page Contains Element   ${MSG_ERROR}

Login com sucesso
    Input Text                         ${INPUT_USERNAME}   standard_user
    Input Text                         ${INPUT_PASSWORD}   secret_sauce
    Click Element                      ${BTN_LOGIN}