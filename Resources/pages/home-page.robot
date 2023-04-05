*** Settings ***
Library               AppiumLibrary
Resource   ../settings/global-variable.robot

*** Variables ***
${NAME_VALUE}        //*[@resource-id='com.loginmodule.learning:id/recyclerViewUsers']//*[@resource-id='com.loginmodule.learning:id/textViewName']
${EMAIL_VALUE}       id=com.loginmodule.learning:id/textViewEmail
${PASSWORD_VALUE}    id=com.loginmodule.learning:id/textViewPassword

*** Keywords ***
Verify Successfully Login
    AppiumLibrary.Element Text Should Be    ${NAME_VALUE}    ${NAME}
    AppiumLibrary.Element Text Should Be    ${EMAIL_VALUE}    ${EMAIL}
    AppiumLibrary.Element Text Should Be    ${PASSWORD_VALUE}    ${PASSWORD}