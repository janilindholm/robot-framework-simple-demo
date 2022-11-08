*** Settings ***
Documentation   Simple Robot Framework and SeleniumLibrary Demo
Suite Setup		Suite Setup
Resource		SimpleRFDemo_resource.robot

# Test cases start here

*** Test Cases ***
Navigating to Mavericks Career page
	[Documentation]	Opens the desired webpage (Mavericks Careers)
	Open Browser

Check Title of the page
	[Documentation]	Checks the Mavericks page title e.g. asserts it (Mavericks Careers)
	Title Should Be					${PAGETITLE}

Check Page Contains "Become a Maverick"
	[Documentation]	Checks that the defined image element exists
	Wait Until Page Contains		${TEST_ELEMENT}
	Page Should Contain				${TEST_ELEMENT}
	
Close Browsers
	Close All Browsers

	
#########################################
## Start creating your test cases here ##
#########################################
