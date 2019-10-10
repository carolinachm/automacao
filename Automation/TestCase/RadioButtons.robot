*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://www.practiceselenium.com/practice-form.html

*** Test Cases ***

Testing Radio Buttons and Check Boxes

    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed  2s

    #Selecionando Radio Buttons
    select radio button    sex   Female
    select radio button    exp   5

    #Selecionando check Box
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  BlackTea



*** Keywords ***
