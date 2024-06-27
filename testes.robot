*** Settings ***
Documentation  Essa suíte testa https://s6.chatguru.app/chats#667af0fb85b7db9f7f865f7f
Resource       resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador
Library    OperatingSystem

*** Test Cases ***

Pré-Condições: 
    Given que estou na página de login "https://s6.chatguru.app/login" 
    When faço login com nome de usuário "seu_usuario" e senha "sua_senha" 
    And eu clico em "Chats" no menu da barra lateral
    And eu mando uma mensagem com um anexo para o número do Whatsapp "15799001582"
    Then eu verei a mensagem enviada com sucesso

    #Implementar os cenários abaixo, após correção do bug encontrado durante 
    #a primeira execução de teste de login

# Cenário 1: Envio de arquivos de imagem
# Cenário: Envio de arquivo de imagem
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu envio um arquivo de imagem no chat
#   Então o arquivo de imagem é enviado com sucesso
#   E o arquivo de imagem aparece corretamente no chat para o destinatário

# Cenário 2: Envio de arquivos de áudio
# Cenário: Envio de arquivo de áudio
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu envio um arquivo de áudio no chat
#   Então o arquivo de áudio é enviado com sucesso
#   E o arquivo de áudio aparece corretamente no chat para o destinatário

# Cenário 3: Envio de arquivos de texto
# Cenário: Envio de arquivo de texto
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu envio um arquivo de texto no chat
#   Então o arquivo de texto é enviado com sucesso
#   E o arquivo de texto aparece corretamente no chat para o destinatário

# Cenário 4: Envio de múltiplos arquivos
# Cenário: Tentativa de envio de vários arquivos 
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu tento enviar dois arquivos diferentes
#   Então a plataforma permite enviar somente o último arquivo anexado

# Cenário 5: Envio de arquivo maior que 15MB
# Cenário: Tentativa de envio de arquivo maior que 15MB
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu tento enviar um arquivo maior que 15MB no chat
#   Então o envio do arquivo é rejeitado
#   E eu vejo uma mensagem de erro informando que o tamanho máximo permitido é 15MB

# Cenário 6: Download de arquivos recebidos
# Cenário: Download de arquivo recebido no chat
#   Dado que sou um usuário logado na plataforma de chat
#   E eu recebi um arquivo no chat
#   Quando eu clico para baixar o arquivo
#   Então o download do arquivo começa
#   E o arquivo é baixado corretamente para o meu dispositivo

# Cenário 7: Validar assinatura dos arquivos enviados
# Cenário: Validar assinatura dos arquivos enviados
#   Dado que sou um usuário logado na plataforma de chat
#   E eu enviei um arquivo por mensagem
#   Quando valido o arquivo
#   Então verifico que ele foi assinado pela AWS S3

# Cenário 8: Envio de arquivos com URLs assinados pela AWS S3
# Cenário: Envio de arquivos com URLs assinados pela AWS S3
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu envio um arquivo no chat
#   Então o arquivo é armazenado na AWS S3
#   E o URL do arquivo é assinado pela AWS S3
#   E o destinatário deve estar logado para baixar o arquivo

# Cenário 9: Visualização de mensagem de erro para arquivos não suportados
# Cenário: Envio de tipo de arquivo não suportado
#   Dado que sou um usuário logado na plataforma de chat
#   Quando eu tento enviar um tipo de arquivo não suportado no chat
#   Então o envio do arquivo é rejeitado
#   E eu vejo uma mensagem de erro informando que o tipo de arquivo não é suportado

# Cenário 10: Envio de arquivo durante a perda de conexão
# Cenário: Tentativa de envio de arquivo com perda de conexão
#   Dado que sou um usuário logado na plataforma de chat
#   E eu estou enviando um arquivo no chat
#   Quando eu perco a conexão com a internet durante o envio
#   Então o envio do arquivo falha
#   E eu vejo uma mensagem de erro informando sobre a falha de conexão
