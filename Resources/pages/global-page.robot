*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SNACK_BAR}            id=com.loginmodule.learning:id/snackbar_text

*** Keywords ***
Verify Snack Bar Text Alert
    [Arguments]    ${TEXT_ALERT}
    Wait Until Element Is Visible    ${SNACK_BAR}
    AppiumLibrary.Element Text Should Be   ${SNACK_BAR}    ${TEXT_ALERT}
