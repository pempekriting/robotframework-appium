*** Settings ***
Library               AppiumLibrary
Resource              ../Resources/pages/login-page.robot
Resource              ../Resources/settings/environment-variable.robot
Resource              ../Resources/pages/register-page.robot
Resource              ../Resources/pages/global-page.robot
Resource              ../Resources/pages/home-page.robot

*** Test Cases ***
Login With Unregistered User
    Launch Mobile Application
    Sign in With User    ${EMAIL}    ${PASSWORD}
    Verify Snack Bar Text Alert    Wrong Email or Password

Register New User And Direct Login
    Launch Mobile Application
    Register New User
    Sign in With User    ${EMAIL}    ${PASSWORD}
    Verify Successfully Login
