*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DrpDowns and Lists
    open browser  ${url}  ${browser}
    maximize browser window

    select from list by label  continents    Australia
    sleep  3
    select from list by index  continents    6

    #select from list by value  continents   value

    #List Box
    select from list by label   selenium_commands  Switch Commands

*** Keywords ***
