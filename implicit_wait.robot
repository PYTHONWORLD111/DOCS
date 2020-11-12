*** Settings ***
Variables    var.py

*** Variables ***


*** keywords ***
Open Window Browser 
    open Browser  https://angular.realworld.io/    ${Browser}
    Maximize Browser Window
    set selenium implicit wait    ${wait}
    #set Browser implicit wait    ${wait}

Close Window Browser
    Close Browser

Login Application
    [Arguments]    ${email}    ${password}
    Input Text     ${login_userxpath}    ${email}
    Input Text     ${login_passxpath}    ${password}
    Click Element    ${signin}