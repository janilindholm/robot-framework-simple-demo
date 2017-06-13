*** Settings ***
Documentation     Basic Robot Framework Simple Demo
Suite Setup       Suite Setup
Library           Selenium2Library
Library           String
Library           OperatingSystem
Library           RequestsLibrary
Library           DateTime

# Define variables here

*** Variables ***
${PAGEADDRESS}   	 http://maanmittauslaitos.fi/
${PAGETITLE}     	 Etusivu | Maanmittauslaitos
${IMAGE_ELEMENT}	//img[@alt='Etusivu']
${BROWSER}       	 chrome		# change the Browser variable to demo with Firefox/IE. Note that you have to have the webdrivers in your Python/Scripts-folder and in PATH

#########################################
## Start extending your variables here ##
#########################################

# Test cases start here

*** Test Cases ***
Navigating to page
	[Documentation]	Opens the desired webpage
	Open Browser

Check Title
	[Documentation]	Checks the title e.g. asserts it
	Title Should Be					${PAGETITLE}

Check Image Element Exists
	[Documentation]	Checks that the defined image element exists
	Page Should Contain Element		${IMAGE_ELEMENT}
	
Close Browsers
	Close All Browsers

##########################################
## Start extending your test cases here ##
##########################################	

# Keywords start here
	
*** Keywords ***
Suite Setup
    Set Library Search Order    Selenium2Library

Open Browser
    Selenium2Library.Open Browser    ${PAGEADDRESS}    ${BROWSER}
    Selenium2Library.Go To    ${PAGEADDRESS}
    Selenium2Library.Maximize Browser Window

Close Browsers
    Builtin.Sleep    1
    Close All Browsers
	
########################################
## Start extending your keywords here ##
########################################