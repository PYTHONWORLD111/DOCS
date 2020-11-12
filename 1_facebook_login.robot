*** Setting ***
Library    SeleniumLibrary

*** Test Cases ***
Login facebook
    Open Browser    http://www.facebook.com    chrome
    Maximize Browser Window
    Wait Until Page Contains    Log In
    Title Should Be    Facebook – log in or sign up
    Sleep    3s
    Input Text    xpath://*[@id="email"]    ssramchowdary@gmail.com
    Sleep    3s
    Input Password    id:pass    srikumar
    Sleep    3s
    Click Button    name:Log In


    ${TITLE}    Get Title
    Log    ${TITLE}    WARN
    Sleep    5s
    Close Browser



