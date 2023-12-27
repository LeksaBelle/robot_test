*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Simple Login Test
    Open Browser    https://opensource-demo.orangehrmlive.com    chrome
    Set Browser Implicit Wait    3 sec
    Input Text    name=username    Admin
    Input Password    name=password    admin123
    Click Button    class=oxd-button
    Click Element    class=oxd-userdropdown-name
    Click Element    link=Logout
    Sleep    5 sec
    Close Browser
    Log    Done
