    *** Settings ***
Library     RequestsLibrary


*** Test Cases ***
Testcase1
    Create Session    alias    http://127.0.0.1:5000
    ${R}    Get Request    alias    /get
    Log    Response is :: ${R.json()}    ERROR
