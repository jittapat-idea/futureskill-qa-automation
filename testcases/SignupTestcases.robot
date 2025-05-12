*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/SignupPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/signupdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
# edit signupdata.yaml to test this test case 
As a user, I want to signup success with vaild credential
    Maximize Browser Window
    When user signup to future skill platform with ${email},${firstName},${lastname},${password} and ${phone} 
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]   user back to future skill platform

As a user, I want to signup fail with null credential
    Maximize Browser Window
    When user signup to future skill platform with no data
    Then future skill should display display validate login fail message as "กรุณากรอกอีเมลของคุณ" 
    Then future skill should display display validate login fail message as "กรุณากรอกชื่อของคุณ"
    Then future skill should display display validate login fail message as "กรุณากรอกนามสกุลของคุณ"
    Then future skill should display display validate login fail message as "กรุณากรอกเบอร์โทรศัพท์"
    Then future skill should display display validate login fail message as "กรุณากรอกรหัสผ่านใหม่"
    Then future skill should display display validate login fail message as "กรุณายืนยันรหัสผ่านใหม่"
    
