***Keywords***
VirtualDisplay
    Start Virtual Display                ${DISPLAY}          1440

Open Browser With Timeout
    [Timeout]                            120 seconds
    Open Browser                         ${HOME_URL}          ${BROWSER}
    # Set Window Size                      ${DISPLAY}           1440

Scroll To Top Page
    Execute Javascript                   window.scrollTo(0, 0);

Scroll To Bottom Page
    Execute Javascript                   window.scrollTo(0, document.body.scrollHeight);
    Sleep                                1

Scroll To Right Page
    Execute Javascript                   window.scrollTo(800, 0);
    Sleep                                1

Scroll To Element
    [Arguments]                          ${element}
    Wait Until Page Contains Element     sizzle=${element}                  timeout=${TIMEOUT_SHORT}          error=There's no ${element}
    ${ver}=                              Get Vertical Position              sizzle=${element}
    Execute Javascript                   window.scrollTo(0,${ver}-200)
    Sleep                                1

Scroll Into View
    [Arguments]                          ${element}
    Wait Until Page Contains Element     sizzle=${element}
    Execute Javascript                   $('${element}')[0].scrollIntoView()
    Sleep                                1