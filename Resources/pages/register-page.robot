*** Settings ***
Library    AppiumLibrary
Resource   global-page.robot
Resource   ../settings/global-variable.robot

*** Variables ***
#*** Register Page Locator ***
${REGISTER_TEXT_LINK}       id=com.loginmodule.learning:id/textViewLinkRegister
${NAME_FIELD}               id=com.loginmodule.learning:id/textInputEditTextName
${EMAIL_FIELD}              id=com.loginmodule.learning:id/textInputEditTextEmail
${PASSWORD_FIELD}           id=com.loginmodule.learning:id/textInputEditTextPassword
${CONFIRM_PASSWORD_FIELD}   id=com.loginmodule.learning:id/textInputEditTextConfirmPassword
${REGISTER_BUTTON}          id=com.loginmodule.learning:id/appCompatButtonRegister
${BACK_LOGIN_VIEW}          id=com.loginmodule.learning:id/appCompatTextViewLoginLink

*** Keywords ***
Register New User
    Click Element    ${REGISTER_TEXT_LINK}
    Wait Until Element Is Visible    ${NAME_FIELD} 
    Input Text    ${NAME_FIELD}    ${NAME}
    Input Text    ${EMAIL_FIELD}   ${EMAIL}
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Input Password    ${CONFIRM_PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${REGISTER_BUTTON}
    Verify Snack Bar Text Alert    Registration Successful
    Click Element    ${BACK_LOGIN_VIEW}
    