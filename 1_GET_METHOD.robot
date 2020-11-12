*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000

*** Test Cases ***
Testcase1
    Create Session    alias    ${BASE_URL}
    ${R}    Get Request    alias    /get
    Log    Response code is :: ${R.status_code}    ERROR
    Log    Response Data is :: ${R.json()}    ERROR
    Log    ename is :: ${R.json()['ename']}    ERROR
    Log    Response header is :: ${R.headers}    ERROR
    
