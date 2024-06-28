*** Variables ***
${CARD_CONTAINER}            xpath=//span[@class='user-name'][contains(.,'554189029791')]
${INPUT_MESSAGE}             //textarea[@name='input_message']
${BTN_SEND_MESSAGE}          //*[@id="btn-send-message"]
${TXT_MSG_ENVIADA}           (//*[@class="msg-contentT ct"])[last()]
${ATTACH_BUTTON}             //i[@class='uil uil-paperclip']   
 
${HORA_ENVIO}                xpath=(//span[@class='msg-timestamp'])[last()]
${CHECK_ENVIO_2V}            xpath=(//img[@src='/static/ack/2.png'])[last()]
${HORA_ENVIO_PENULTIMA_MSG}  xpath=(//span[@class='msg-timestamp'])[last()-1]  

${CX_IMG_ENVIADO}            xpath=(//a[@class='msg-image ct lightbox-modal'])[last()]
${CX_TXT_ENVIADO}            xpath=(//a[contains(@class,'msg-image-small ct')])[last()]
${CX_AUDIO_ENVIADO}          (//div[@class='text-center'][contains(.,'Velocidade: 100%')])[last()] 
  
${CX_MSG_RECEBIDA}           xpath=//div[@class='m-cont-in float-left'] 
${DOWLOAD_ULT_MSG_RECEBIDA}  xpath=(//button[@class='btn btn-sm btn-light float-right mt-1'])[last()]  

