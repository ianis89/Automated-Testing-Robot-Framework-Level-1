*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    #initializ Selenium
#    Set selenium speed       .2s
    Set selenium timeout      10s



    #Open browser

    Open browser            https://automationplayground.com/crm/          ${BROWSER}

    # resize browser window for recordingg
    Set window position     x=341    y=169
    Set window size         width=1935    height=1090

    wait until page contains    Customers Are Priority One!



End Web Test
    close all browsers


