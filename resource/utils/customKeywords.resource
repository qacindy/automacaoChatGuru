*** Settings ***
Resource    ../../base.resource


*** Keywords ***
Abrir o navegador
    Open Browser    url=${URL}     browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser    