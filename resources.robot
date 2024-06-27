*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}                        https://s6.chatguru.app/chats#667af0fb85b7db9f7f865f7f
${URL_NOTIFICATIONS}          chrome://settings/content/notifications
#${EDGE_DRIVER_PATH}           C:\Automation\Projeto_ChatGuru\Autom_RobotFramework\msedgedriver.exe
${BROWSER}                    chrome

${RB_NOTIFICATIONS}          /html/body/settings-ui//div[2]/settings-main//settings-basic-page//div[1]/settings-section[5]/settings-privacy-page//settings-animated-pages/settings-subpage/div/cr-radio-group/cr-radio-button[2]
${TXT_BOAS_VINDAS_LOGIN}     //h3[@class='LoginSubtitle'][contains(.,'Bem vindo a nossa plataforma!')]
${INPUT_EMAIL}               //input[contains(@type,'email')]
${INPUT_SENHA}               //input[contains(@type,'password')]
${BTN_LOGIN}                 //button[@class='FormButton'][contains(.,'Login')]
${MENU_CHATS}                //*[@id="menu_lateral_principal"]/li[1]/a
${CHAT}                      //span[@class='user-name'][contains(.,'554189029791')]
${INPUT_MESSAGE}             //button[@class='FormButton'][contains(.,'Login')]
${BTN_SEND_MESSAGE}          //i[contains(@id,'btn-send-message')]
${TXT_MSG_ENVIADA}           //span[contains(@class,'msg-contentT ct')]

*** Keywords ***

Abrir o navegador
    Open Browser    ${URL}     ${BROWSER}     
    Maximize Browser Window

Fechar o navegador
    Close Browser    

que estou na página de login "https://s6.chatguru.app/login"
    Wait Until Element Is Visible    ${TXT_BOAS_VINDAS_LOGIN}
    
faço login com nome de usuário "seu_usuario" e senha "sua_senha"
    Wait Until Element Is Visible    ${INPUT_EMAIL}
    Input Text    ${INPUT_EMAIL}    cintia.avanz@hotmail.com
    Input Password    ${INPUT_SENHA}     2w@eYQy4r2y
    Click Element    ${BTN_LOGIN}

eu clico em "Chats" no menu da barra lateral
    Wait Until Page Contains    ${MENU_CHATS}   
    Wait Until Element Is Enabled    ${MENU_CHATS}
    Click Element    ${CHAT}

eu mando uma mensagem com um anexo para o número do Whatsapp "15799001582"
    Wait Until Element Is Visible    ${INPUT_MESSAGE}
    Input Text    ${INPUT_MESSAGE}    Teste de envio
    Click Element    ${BTN_SEND_MESSAGE}

eu verei a mensagem enviada com sucesso
    Wait Until Element Is Visible    ${TXT_MSG_ENVIADA}
    Element Text Should Be    ${TXT_MSG_ENVIADA}    Teste de envio


    