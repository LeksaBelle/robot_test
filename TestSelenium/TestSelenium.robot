*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Selenium Test
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    3 sec
    Input Text    name=q    Что-то вставляется в строку поиска
    Press Keys    name=q    ENTER
    #Click Button    name=btnK    
    #Sleep    2 sec
    Close Browser
    Log    Done
