*** Settings ***
Library                 AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     7.0
${DEVICE_NAME}          emulator-5554
# ${DEVICE_NAME}          4d42ba7a7cf4
${APP}                  ${CURDIR}\\app\\app-debug-staging-investor.apk
${PACKAGE_NAME}         com.cartenz.oss
${fullname}             Depa Panjie Purnama
${country}              Indonesia
${phone}                081212341234
${identity}             3203172804940004
${email}                rf.appium@mailinator.com
${password}             111111
${passconf}             111111

*** Keywords ***
Open the app
    Open Application        ${REMOTE_URL}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}  app=${APP}  automationName=appium  appPackage=${PACKAGE_NAME}
    Click Element           id=button1
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']

Register user
    Click Element           id=tv_register
    Input Text              id=et_full_name                 ${fullname}
    Click Element           id=rlClickConsumer
    Input Text              id=editText_search              ${country}
    Click Element           xpath=//android.widget.TextView[@text='Indonesia (ID)']
    Input Text              id=et_phone_number              ${phone}
    Click Element           id=sp_identity
    Click Element           xpath=//android.widget.CheckedTextView[@text='ID Card']
    Input Text              id=et_identity_number           ${identity}
    Input Text              id=et_email                     ${email}
    Click Element           id=et_password
    Input Text              id=et_password                  ${password}
    Hide Keyboard
    Click Element           id=et_confirm_password
    Input Text              id=et_confirm_password          ${passconf}
    Hide Keyboard
    Click Element           id=btn_register

Close the app
    Close All Applications