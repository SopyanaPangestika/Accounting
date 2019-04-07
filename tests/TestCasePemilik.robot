*** Settings ***
Suite Setup             Open Browser With Timeout
Suite Teardown          Close Browser
Test Setup              
Resource                ../resource.robot

*** Test Case ***
Login Pemilik
    [Documentation]         Pemilik Able to Login
    Go To                   ${LOGIN_URL}
    LoginPage.Login As      ${PEMILIK.USER}     ${PEMILIK.PASS}
    LoginPage.Notification Login Success
    LoginPage.Verify Link After Login

Akun Rekening Data Master Pemilik
    [Documentation]         Pemilik Able to See & Click Widget Custom Menu
    Go To                   ${HOME_URL}
    
    Verify Sidebar Menu
    Open Sidebar Menu       Data Master

    Open Menu               Akun Rekening
    Verify Page             Akun Rekening
    Debug   
    

