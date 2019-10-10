*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser      ${url}  ${browser}
    maximize browser window
    LoginToApplication
    Close Browser


*** Keywords ***
LoginToApplication
    Click Link       xpath://a[@class='ico-Login']
    Input Text       id:Email  carolti2013@gmail.com
    Input Text       id:Password   Teste
    Click Element    xpath:input[@class='button-1 login-button']
