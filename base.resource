*** Settings ***
### Libs
Library    SeleniumLibrary   
Library    OperatingSystem
Library    DateTime

### Locators
Resource    resource/locators/chatLocators.resource
Resource    resource/locators/homeLocators.resource
Resource    resource/locators/loginLocators.resource
Resource    resource/locators/attachLocators.resource

### Gherkin Actions
Resource    resource/actions/given.resource
Resource    resource/actions/when.resource
Resource    resource/actions/then.resource

### Utils
Resource    resource/utils/customKeywords.resource

*** Variables ***
${URL}      https://s6.chatguru.app/chats#667af0fb85b7db9f7f865f7f
${BROWSER}  chrome
${FILE_AUDIO}        ${CURDIR}/src/audio/aud2.mp3
${FILE_TEXT}         ${CURDIR}/src/txt/txt.pdf
${FILE_IMAGE}        ${CURDIR}/src/img/teste.jpg
${FILE_MAIOR_15MG}   ${CURDIR}/src/audio/16MB.wav
${UploadFiletest}           css=[type='file']