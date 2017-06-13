*** Settings ***
Documentation   Simple Robot Framework and Selenium2Library Demo
Suite Setup		Suite Setup
Resource		SimpleRFDemo_resource.robot

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

	
#########################################
## Start creating your test cases here ##
#########################################
