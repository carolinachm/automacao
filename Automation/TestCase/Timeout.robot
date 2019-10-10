*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}   http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest

    open browser  ${url}  ${browser}
    maximize browser window
    ${time}=   get selenium timeout
    log to console   ${time}
    set selenium timeout  10s
    wait until page contains  Registration   #timeout de 5s
    select radio button   Gender   M
    input text  name:FirstName  Carol
    input text  name:LastName   Mesquita
    input text  name:Email      carolti2013@gmail.com
    input text  name:Password   123456
    input text  name:ConfirmPassword   123456
    ${time}=   get selenium timeout
    log to console   ${time}

    close browser