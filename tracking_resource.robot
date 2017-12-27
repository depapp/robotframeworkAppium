*** Settings ***
Library                 AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     7.1.2
${DEVICE_NAME}          4d42ba7a7cf4
${APP}                  ${CURDIR}\\app\\app-debug-staging-investor.apk
${PACKAGE_NAME}         com.cartenz.oss
${username}             oeseso@mailinator.com
${password}             111111
${tracking}             1513926312

*** Keywords ***
Open the app
    Open Application        ${REMOTE_URL}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}  app=${APP}  automationName=appium  appPackage=${PACKAGE_NAME}
    Click Element           id=button1
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']

Login the app
    Input Text              xpath=//android.widget.EditText[@text='Email']              ${username}
    Click Element           xpath=//android.widget.EditText[@text='Password']
    Input Text              xpath=//android.widget.EditText[@text='Password']           ${password}
    Hide Keyboard
    Click Element           id=btnLogin

Searching complaint
    Click Element           id=btnInputComplaintId
    Input Text              id=etComplaintId                ${tracking}
    Click Element           id=btnSubmit

Close the app
    Close All Applications