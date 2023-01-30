*** Settings ***
Documentation               This is some basic info about the shole suite
Resource                ../Resources/Common.robot
Resource                ../Resources/Crm.App.robot

Test Setup             Begin Web Test
Test Teardown          End Web Test

#Run the script:
#robot -d Results Tests/crm.robot

*** Variables ***

${BROWSER} =                  chrome
${URL} =                      https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =        admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =     MyPassword!

*** Test Cases ***

Home page should load
    [Documentation]          Test the home page
    [Tags]                   1001 Smoke      Home
    Crm.App.Go to "Home" Page


Should be able Login with Valid Credentials
    [Documentation]          Test the login
    [Tags]                   1002 Smoke      Login
    Crm.App.Go to "Home" Page
    Crm.App.Login with Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}


Should be able to Log Out
    [Documentation]          Test the Log out
    [Tags]                   1003 Smoke      Login
    Crm.App.Go to "Home" Page
    Crm.App.Login with Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Crm.App.Sign Out

Should be able to add new customer
    [Documentation]          Test adding a new customer
    [Tags]                   1004 Smoke      Contacts
    Crm.App.Go to "Home" Page
    Crm.App.Login with Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Crm.App.Add New Customer
    Crm.App.Sign Out


