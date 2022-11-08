*** Settings ***
Resource		SimpleRFDemo_resource.robot

# Keywords start here
	
*** Keywords ***
Suite Setup
	Set Library Search Order    				SeleniumLibrary

Open Browser
	SeleniumLibrary.Open Browser    			${PAGEADDRESS}    ${BROWSER}
	SeleniumLibrary.Go To   		 			${PAGEADDRESS}
	SeleniumLibrary.Maximize Browser Window

Close Browsers
    Builtin.Sleep    1
    Close All Browsers
	
	
#######################################
## Start creating your keywords here ##
#######################################