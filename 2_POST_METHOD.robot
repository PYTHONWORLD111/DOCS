*** Settings ***
Library     RequestsLibrary
Library     json

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000

*** Test Cases ***
Testcase1
    Create Session    alias    ${BASE_URL}
    ${BODY} =     create dictionary    sal=ok
    ${BODY}    Json.Dumps    ${BODY}
    ${HEADER}    create dictionary    Content-type=application/json
    ${R}    Post Request    alias    /create    data=${BODY}    headers=${HEADER}
    Log    Response code is :: ${R.status_code} ${BODY}   ERROR
    Log    Response Data is :: ${R.content}    ERROR




