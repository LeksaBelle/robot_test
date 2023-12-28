*** Settings ***
Library    SeleniumLibrary
Test Setup    Test Setup
Test Teardown    Test Teardown

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com
${PASS}    admin123
${USER}    Admin

*** Test Cases ***
Simple Login Test
    Login To Site
    Click Element    class=oxd-userdropdown-name
    Click Element    link=Logout
    Sleep    2 sec

*** Keywords ***
Login To Site
    Input Text    name=username    ${USER}
    Input Password    name=password    ${PASS}
    Click Button    class=oxd-button

Test Setup
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    3 sec

Test Teardown
    Close Browser
    Log    Done
