*** Settings ***
Library     RequestsLibrary
Library    json
Library    OperatingSystem

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000
${BEARER_TOKEN}    "Bearer a4mnfer459bfoty43"

*** Test Cases ***
Create MDT Job
    [Tags]    COLL_JOB
    Create Session    alias    ${CW_BASE_URL}
    ${BODY}=    Get file    mdt_collection_job.json
    Log    ${BODY}    WARN
    ${HEADER}    create dictionary       Content-type=application/json    accept=application/json
    ${R}   Post Request    alias    /api/v1.0/crosswork/collection-job/create    data=${BODY}     headers=${HEADER}
    Should Be Equal    '${R.status_code}'    '202'    Expected response code is 202 got ${R.status_code} 
    Should Be Equal    '${R.content}'    'Accepted'    Expected response data is Accepted got ${R.content}





