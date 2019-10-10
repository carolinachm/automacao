*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${spead}=  get selenium speed
    log to console   ${spead}
    open browser  ${url}  ${browser}
    maximize browser window
    #Sleep  3
    set selenium speed  3s
    select radio button   Gender   M
    input text  name:FirstName  Carol
    input text  name:LastName   Mesquita
    input text  name:Email      carolti2013@gmail.com
    input text  name:Password   123456
    input text  name:ConfirmPassword   123456
    ${spead}=  get selenium speed
    log to console   ${spead}

    close browser
*** Keywords ***
