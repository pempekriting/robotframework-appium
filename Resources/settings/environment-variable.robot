*** Settings ***
Library               AppiumLibrary

*** Variables ***
#*** Test Variables ***
${APPIUM_SERVER_URL}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.loginmodule.learning
${APP_ACTIVITY}         com.loginmodule.learning.activities.LoginActivity
${APP_DIR}              ${CURDIR}/../../Resources/apps/Apps.apk
${AUTOMATION_NAME}      UiAutomator2

*** Keywords ***
Launch Mobile Application
    Open Application    ${APPIUM_SERVER_URL}
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_DIR}
    ...    appApckage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    ...    newCommandTimeout=60