*** Settings ***
Resource    ../../base.resource

*** Keywords ***
faço login com nome de usuário "seu_usuario" e senha "sua_senha"
    Wait Until Element Is Visible    ${INPUT_EMAIL}
    Input Text    ${INPUT_EMAIL}    cintia.avanz@hotmail.com
    Input Password    ${INPUT_SENHA}     2w@eYQy4r2y
    Click Element    ${BTN_LOGIN}

eu clico em "Chats" no menu da barra lateral
    
    Wait Until Element Is Visible    ${MENU_LATERAL}  
    Mouse Over    ${MENU_LATERAL} 

    Wait Until Element Is Visible    ${CHAT_BUTTON}  
    Click Element    ${CHAT_BUTTON}

eu mando uma mensagem para o número do Whatsapp
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${INPUT_MESSAGE}
    Input Text    ${INPUT_MESSAGE}    Teste de envio
    Click Element    ${BTN_SEND_MESSAGE}

eu envio um arquivo de imagem no chat
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Capture Page Screenshot
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${ATTACH_BUTTON} 
    Capture Page Screenshot
    Click Element   ${ATTACH_BUTTON} 
    Capture Page Screenshot   

    ${FILE_IMAGE}    Join Path        ${FILE_IMAGE}
    Choose file    ${UploadFiletest}      ${FILE_IMAGE}
    Wait Until Page Contains Element   ${FILE_ATTACHED}
    Wait Until Element Is Visible     ${SEND_ATTACH}
    Sleep    5s
    Click Element    ${SEND_ATTACH}
    Sleep    5s

eu envio um arquivo de áudio no chat
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Capture Page Screenshot
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${ATTACH_BUTTON} 
    Capture Page Screenshot
    Click Element   ${ATTACH_BUTTON} 
    Capture Page Screenshot   

    ${FILE_AUDIO}    Join Path        ${FILE_AUDIO}
    Choose file    ${UploadFiletest}      ${FILE_AUDIO}
    Wait Until Page Contains Element   ${FILE_ATTACHED}
    Wait Until Element Is Visible     ${SEND_ATTACH}
    Sleep    5s
    Click Element    ${SEND_ATTACH}
    Sleep    5s

eu envio um arquivo de texto no chat
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Capture Page Screenshot
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${ATTACH_BUTTON} 
    Capture Page Screenshot
    Click Element   ${ATTACH_BUTTON} 
    Capture Page Screenshot   

    ${FILE_TEXT}    Join Path        ${FILE_TEXT}
    Choose file    ${UploadFiletest}      ${FILE_TEXT}
    Wait Until Page Contains Element   ${FILE_ATTACHED}
    Wait Until Element Is Visible     ${SEND_ATTACH}
    Sleep    5s
    Click Element    ${SEND_ATTACH}
    Sleep    5s

eu tento enviar dois arquivos diferentes
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Capture Page Screenshot
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${ATTACH_BUTTON} 
    Capture Page Screenshot
    Click Element   ${ATTACH_BUTTON} 
    Capture Page Screenshot   

    ${FILE_AUDIO}    Join Path        ${FILE_AUDIO}
    Choose file    ${UploadFiletest}      ${FILE_AUDIO}
    Wait Until Page Contains Element   ${FILE_ATTACHED}

    ${FILE_IMAGE}    Join Path        ${FILE_IMAGE}
    Choose file    ${UploadFiletest}      ${FILE_IMAGE}
    Wait Until Page Contains Element   ${FILE_ATTACHED}

    Wait Until Element Is Visible     ${SEND_ATTACH}
    Sleep    5s
    Click Element    ${SEND_ATTACH}
    Sleep    5s
    
eu tento enviar um arquivo maior que 15MB no chat    
    
    Wait Until Element Is Visible    ${CARD_CONTAINER}
    Capture Page Screenshot
    Click Element    ${CARD_CONTAINER}

    Wait Until Element Is Visible    ${ATTACH_BUTTON} 
    Capture Page Screenshot
    Click Element   ${ATTACH_BUTTON} 
    Capture Page Screenshot   

    ${FILE_MAIOR_15MG}    Join Path        ${FILE_MAIOR_15MG}
    Choose file    ${UploadFiletest}      ${FILE_MAIOR_15MG}
    Wait Until Page Contains Element   ${FILE_ATTACHED}
    Wait Until Element Is Visible     ${SEND_ATTACH}
    Sleep    5s
    Click Element    ${SEND_ATTACH}
    Sleep    5s
     