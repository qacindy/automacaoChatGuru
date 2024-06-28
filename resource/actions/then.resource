*** Settings ***
Resource    ../../base.resource

*** Keywords ***
eu verei a mensagem enviada com sucesso
    Wait Until Element Is Visible    ${TXT_MSG_ENVIADA}
    Wait Until Element Contains    ${TXT_MSG_ENVIADA}    Teste

o arquivo de imagem é enviado com sucesso
    Wait Until Element Is Visible    ${CX_IMG_ENVIADO}

o arquivo de áudio é enviado com sucesso
    Wait Until Element Is Visible    ${CX_AUDIO_ENVIADO}

o arquivo de texto é enviado com sucesso
    Wait Until Element Is Visible    ${CX_TXT_ENVIADO}

o arquivo de imagem aparece corretamente no chat para o destinatário
    Page Should Contain Element   ${CX_IMG_ENVIADO}
    Wait Until Page Contains Element    ${CHECK_ENVIO_2V}
    Log   Mensagem chegou ao destinatario ${CHECK_ENVIO_2V}
    ${HORA_ENVIO}  Get Text    ${HORA_ENVIO}
    Log   Mensagem enviada no horario: ${HORA_ENVIO}    

o arquivo de áudio aparece corretamente no chat para o destinatário
    Page Should Contain Element   ${CX_AUDIO_ENVIADO}
    Wait Until Page Contains Element    ${CHECK_ENVIO_2V}
    Log   Mensagem chegou ao destinatario ${CHECK_ENVIO_2V}
    ${HORA_ENVIO}  Get Text    ${HORA_ENVIO}
    Log   Mensagem enviada no horario: ${HORA_ENVIO}

o arquivo de texto aparece corretamente no chat para o destinatário
    Page Should Contain Element   ${CX_TXT_ENVIADO}
    Wait Until Page Contains Element    ${CHECK_ENVIO_2V}
    Log   Mensagem chegou ao destinatario ${CHECK_ENVIO_2V}
    ${HORA_ENVIO}  Get Text    ${HORA_ENVIO}
    Log   Mensagem enviada no horario: ${HORA_ENVIO}

a plataforma permite enviar somente o último arquivo anexado
    Wait Until Element Is Visible    ${CX_IMG_ENVIADO}
    Sleep     5s
    ${HORA_ENVIO}  Get Text    ${HORA_ENVIO}
    Log   ${HORA_ENVIO}
    
    # Capturar a hora da penúltima mensagem enviada
    ${HORA_ENVIO_PENULTIMA_MSG}  Get Text  ${HORA_ENVIO_PENULTIMA_MSG}
    Log    ${HORA_ENVIO_PENULTIMA_MSG}

    # o horário das duas últimas mensagens não deve ser o mesmo
    Should Not Be Equal     ${HORA_ENVIO}        ${HORA_ENVIO_PENULTIMA_MSG}

o envio do arquivo é rejeitado
    Page Should Contain     ${WINDOW_FILE_SUBMIT}

exibe mensagem de tamanho do arquivo não suportado
    ${MESSAGE}      Handle Alert
    Should Be Equal    ${MESSAGE}    ${ALERTA_TAMANHO_ARQUIVO}    
    Accept Alert 

eu vejo uma mensagem de erro informando que o tamanho máximo permitido é 15MB
    exibe mensagem de tamanho do arquivo não suportado

o arquivo é aberto em uma nova aba
    Sleep    5s
    ${ALL_HANDLES}    Get Window Handles
    ${NEW_HANDLE}    Set Variable    ${ALL_HANDLES}[1]
    Switch Window    ${NEW_HANDLE}

verifico que ele foi assinado pela AWS S3
    Sleep    5s
    ${NEW_URL}        Get Location
    Log        ${NEW_URL}
    Should Contain      ${NEW_URL}        s3.amazonaws
    
    