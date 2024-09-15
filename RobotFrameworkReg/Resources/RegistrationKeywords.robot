*** Settings ***
Library        SeleniumLibrary
Variables    ../PageObjects/RegistrationPageLocators.py
Variables    ../PageObjects/HomePageLocators.py

*** Keywords ***
CLickRegistrationButton
      Click Link    ${RegButton}

InsertContactInformationSection
    [Arguments]    ${FirstName}    ${LastName}    ${phone}    ${email}
    Input Text    ${firstNameField}    ${FirstName}
    Input Text    ${lastNameField}     ${LastName}
    Input Text    ${phoneField}    ${phone}
    Input Text    ${emailNameField}    ${email}

InsertMailingInformationSection
    [Arguments]    ${address}    ${city}    ${state}    ${postalCode}    ${country}
    Input Text    ${addressField}    ${address}
    Input Text    ${cityField}    ${city}
    Input Text    ${postalCodeField}    ${postalCode}
    Input Text    ${stateField}    ${state}
    Select From List By Value    ${countryDropDown}     ${country}

InsertUserInformationSection
    [Arguments]    ${userName}    ${password}    ${confirmPassword}
    Input Text    ${userNameField}    ${userName}
    Input Text    ${passwordField}    ${password}
    Input Text    ${confirmPasswordField}    ${confirmPassword}

ClickSubmit
    Click Button    ${submitButton}
    
Verify Successful Registration
    Page Should Contain    Thank you for registering.
