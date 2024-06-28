*** Settings ***
Resource    ../../base.resource

*** Keywords ***
eu verei a mensagem enviada com sucesso
    Wait Until Element Is Visible    ${TXT_MSG_ENVIADA}
    Wait Until Element Contains    ${TXT_MSG_ENVIADA}    Teste

o arquivo de imagem é enviado com sucesso
    Wait Until Element Is Visible    ${CX_IMG_ENVIADO}
    Capture Page Screenshot

o arquivo de áudio é enviado com sucesso
    Wait Until Element Is Visible    ${CX_AUDIO_ENVIADO}
    Capture Page Screenshot

o arquivo de texto é enviado com sucesso
    Wait Until Element Is Visible    ${CX_TXT_ENVIADO}
    Capture Page Screenshot

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
    # Capturar a hora da última mensagem enviada
    ${HORA_ENVIO}  Get Text    ${HORA_ENVIO}
    # ${HORA_ENVIO}   Convert Time  ${HORA_ENVIO} result_format=%H:%M
    Log   ${HORA_ENVIO}
    
    # Capturar a hora da penúltima mensagem enviada
    ${HORA_ENVIO_PENULTIMA_MSG}  Get Text  ${HORA_ENVIO_PENULTIMA_MSG}
    # ${HORA_ENVIO_PENULTIMA_MSG}  Convert Time  ${HORA_ENVIO_PENULTIMA_MSG} result_format=%H:%M
    Log    ${HORA_ENVIO_PENULTIMA_MSG}

    # o horário das duas últimas mensagens não deve ser o mesmo
    Should Not Be Equal     ${HORA_ENVIO}        ${HORA_ENVIO_PENULTIMA_MSG}
