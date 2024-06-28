Language: Brazilian Portuguese
*** Settings ***
Resource    ../base.resource
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador
Test Tags    chatguru

*** Test Cases ***
Cenário 1: Enviar Mensagem Com Sucesso
    Dado que sou um usuário logado na plataforma de chat
    E eu mando uma mensagem para o número do Whatsapp
    Então eu verei a mensagem enviada com sucesso

Cenário 2: Envio de arquivo de imagem
    Dado que sou um usuário logado na plataforma de chat
    Quando eu envio um arquivo de imagem no chat
    Então o arquivo de imagem é enviado com sucesso
    E o arquivo de imagem aparece corretamente no chat para o destinatário

Cenário 3: Envio de arquivo de áudio
    Dado que sou um usuário logado na plataforma de chat
    Quando eu envio um arquivo de áudio no chat
    Então o arquivo de áudio é enviado com sucesso
    E o arquivo de áudio aparece corretamente no chat para o destinatário

Cenário 4: Envio de arquivo de texto
    Dado que sou um usuário logado na plataforma de chat
    Quando eu envio um arquivo de texto no chat
    Então o arquivo de texto é enviado com sucesso
    E o arquivo de texto aparece corretamente no chat para o destinatário

Cenário 5: Tentativa de envio de vários arquivos 
    Dado que sou um usuário logado na plataforma de chat
    Quando eu tento enviar dois arquivos diferentes
    Então a plataforma permite enviar somente o último arquivo anexado

Cenário 6: Tentativa de envio de arquivo maior que 15MB
    Dado que sou um usuário logado na plataforma de chat
    Quando eu tento enviar um arquivo maior que 15MB no chat
    E eu vejo uma mensagem de erro informando que o tamanho máximo permitido é 15MB
    Então o envio do arquivo é rejeitado
    
Cenário 8: Download de arquivo recebido no chat
      Dado que sou um usuário logado na plataforma de chat
      E eu recebi um arquivo no chat
      Quando eu clico para baixar o arquivo
      Então o arquivo é aberto em uma nova aba

Cenário 8: Validar assinatura dos arquivos enviados
  Dado que sou um usuário logado na plataforma de chat
  E eu enviei um arquivo por mensagem
  Quando valido o arquivo
  Então verifico que ele foi assinado pela AWS S3



