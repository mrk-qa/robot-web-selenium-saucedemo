*** Settings ***
Documentation                          Keywords de setup e teardown

Library                                SeleniumLibrary

*** Variables ***
${CHROME_OPTIONS}                      add_experimental_option('excludeSwitches', ['enable-logging'])

*** Keywords ***
Nova Sessão
    #chrome or headlesschrome
    Open Browser                       https://www.saucedemo.com         chrome        options=${CHROME_OPTIONS}        executable_path="/usr/local/bin"
    Maximize Browser Window

Encerra Sessão
    Capture Page Screenshot
    Close Browser