*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

future skill should display home page and have button as "user menu"
    CommonKeywords.Wait until page contains element then verify button    xpath=//button[@id="headlessui-menu-button-7"]

user logout from future skill platform
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@id="headlessui-menu-button-7"]
    CommonKeywords.Wait until element is ready then click element    xpath=//div[contains(text(),"ออกจากระบบ")]

