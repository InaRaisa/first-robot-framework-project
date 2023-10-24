*** Settings ***

Library    SeleniumLibrary
Documentation
...    My First Test
...    This test will verify Amazon

*** Keywords ***

Launching Browser
    Open Browser    ${google}    ${browser}
    Maximize Browser Window
Wait for All Selenium Elements
    Set Selenium Speed    1seconds
Wait
    Sleep    2
Search Amazon and Visit
    Input Text    name:q    amazon
    Press Keys    name:q    ENTER
    Click Element    xpath://h3[contains(text(), 'Amazon.com. Spend less. Smile more')]
Verify the Page
    Title Should Be    Amazon.com. Spend less. Smile more.
Page Screenshot and Close
    Capture Page Screenshot
    Close Browser

*** Test Cases ***

Open Google & Verify Amazon
    Launching Browser
    Wait for All Selenium Elements
    Wait
    Search Amazon and Visit
    Verify the Page
    Page Screenshot and Close

*** Variables ***
${google}    https://www.google.com
${browser}    chrome