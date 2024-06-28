*** Settings ***
Resource    ../../base.resource

*** Keywords ***
que estou na página de login "https://s6.chatguru.app/login" 

    Wait Until Element Is Visible    ${TXT_BOAS_VINDAS_LOGIN}

que sou um usuário logado na plataforma de chat
    que estou na página de login "https://s6.chatguru.app/login" 
    faço login com nome de usuário "seu_usuario" e senha "sua_senha" 
    eu clico em "Chats" no menu da barra lateral
    
    