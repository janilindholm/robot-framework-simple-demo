*** Settings ***
Resource		SimpleRFDemo_resource.robot

# Keywords start here
	
*** Keywords ***
Suite Setup
	Set Library Search Order    Selenium2Library

Open Browser
	Selenium2Library.Open Browser    ${PAGEADDRESS}    ${BROWSER}
	Selenium2Library.Go To   		 ${PAGEADDRESS}
	Selenium2Library.Maximize Browser Window

Close Browsers
    Builtin.Sleep    1
    Close All Browsers
	
	
#######################################
## Start creating your keywords here ##
#######################################