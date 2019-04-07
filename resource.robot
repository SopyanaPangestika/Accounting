*** Settings ***
Documentation    A resource for global
Library          ExtendedSelenium2Library    10    run_on_failure=Capture Page Screenshot
Library          Collections
Library          OperatingSystem
Library          String
Library          Dialogs
Library          DebugLibrary
Resource         util/Setup.robot
Resource         keywords/LoginPage.robot
Resource         keywords/DataMaster.robot
Resource         keywords/Keywords.robot

*** Variable ***
${DISPLAY}        2560              
${SERVER}         45.76.162.57
${BROWSER}        chrome
${LOGIN_URL}      http://${SERVER}/login/log
${HOME_URL}       http://${SERVER}/site

&{TIMEOUT}        FAST=3
...               SHORT=5
...               LONG=10

&{PEMILIK}        USER=pemilik
...               PASS=admin123


