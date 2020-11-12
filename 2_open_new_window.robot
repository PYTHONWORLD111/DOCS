n*** Setting ***
Library    SeleniumLibrary

*** Test Cases ***
Login facebook
    Open Browser    http://www.facebook.com    chrome
    Maximize Browser Window
    Wait Until Page Contains    Log In
    Title Should Be    Facebook – log in or sign up
    Sleep    3s

    Execute Javascript    window.open('https://robotframework.org')
    Execute Javascript    window.open('https://python.org')

    ${excludes}      Get Window Handles
    Sleep    3s
    Log    \n\n ${excludes[1]}    ERROR
    Switch Window    ${excludes[1]}

    ${TITLE}    Get Title
    Log    ${TITLE}    WARN

    Sleep    5s
    Close Browser



