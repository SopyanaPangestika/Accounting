***Keywords***
Verify Sidebar Menu
    Wait Until Element Is Visible       sizzle=.sidebar-menu        timeout=${TIMEOUT.SHORT}
    
Open Sidebar Menu
    [Arguments]         ${title}
    Wait Until Element Is Visible           sizzle=.sidebar-menu li:contains(${title})          timeout=${TIMEOUT.SHORT}
    Click Element                           sizzle=.sidebar-menu li:contains(${title})

Open Menu
    [Arguments]         ${title}
    Wait Until Element Is Visible           sizzle=.sidebar-menu li a:contains(${title})          timeout=${TIMEOUT.SHORT}
    Click Element                           sizzle=.sidebar-menu li a:contains(${title})

Verify Page
    [Arguments]         ${page}
    Wait Until Element Is Visible           sizzle=.box-title:contains(${page})     timeout=${TIMEOUT.SHORT}