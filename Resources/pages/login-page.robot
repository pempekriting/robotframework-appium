*** Settings ***
Library    AppiumLibrary

*** Variables ***
#*** Login Page Locator ***
${EMAIL_FIELD}          id=com.loginmodule.learning:id/textInputEditTextEmail
${PASSWORD_FIELD}       id=com.loginmodule.learning:id/textInputEditTextPassword
${LOGIN_BUTTON}         id=com.loginmodule.learning:id/appCompatButtonLogin

*** Keywords ***
Sign in With User
    [Arguments]    ${USER_EMAIL}    ${USER_PASSWORD}
    Input Text                    ${EMAIL_FIELD}        ${USER_EMAIL}
    Input Password                ${PASSWORD_FIELD}     ${USER_PASSWORD}
    Click Element                 ${LOGIN_BUTTON}