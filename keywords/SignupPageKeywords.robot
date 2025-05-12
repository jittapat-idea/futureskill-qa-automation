*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user signup to future skill platform with ${email},${firstName},${lastname},${password} and ${phone}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName        ${firstName}
    CommonKeywords.Wait until element is ready then input text        name=lastName         ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${phone}
    CommonKeywords.Wait until element is ready then input text        name=newPassword      ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword  ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@type="checkbox" and @name="consent"]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

user signup to future skill platform with no data
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

user back to future skill platform
    CommonKeywords.Wait until element is ready then click element     xpath=//div[contains(text(),"กลับหน้าแรก")]



