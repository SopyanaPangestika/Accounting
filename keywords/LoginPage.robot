*** Keywords ***
Login As
    [Arguments]           ${login_username}          ${login_password}
    Input Text            username             ${login_username}
    Input Password        password             ${login_password}
    Click Button          sizzle=.btn

Notification Login Success
    Wait Until Element Is Visible        sizzle=.alert-success:contains('login berhasil')      timeout=${TIMEOUT.SHORT}

Notification Logout Success
    Wait Until Element Is Visible        sizzle=.alert-success:contains('logout berhasil')      timeout=${TIMEOUT.SHORT}

Verify Link After Login
    Location Should Contain              ${HOME_URL}