*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser}    chrome
${URL}    https://demo.guru99.com/test/newtours/
${FirstName}    Sohaib
${LastName}    Ahmed
${Phone}    0123456789
${email}    sa@gmail.com
${address}    Hadayeek al ahram
${city}    Giza
${state}    Cairo
${postalCode}     12345
${country}    EGYPT
${password}    Pa$$w0rd
${confirmPassword}    Pa$$w0rd

*** Test Cases ***
RegistrationTest
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    CLickRegistrationButton
    InsertContactInformationSection    ${FirstName}    ${LastName}    ${phone}    ${email}
    InsertMailingInformationSection    ${address}    ${city}    ${state}    ${postalCode}    ${country}
    InsertUserInformationSection       ${email}    ${password}    ${confirmPassword}
    ClickSubmit
    Sleep    3
    Verify Successful Registration
    Sleep    2