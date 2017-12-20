*** Settings ***
Library                 AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     7.0
${DEVICE_NAME}          emulator-5554
${APP}                  ${CURDIR}\\app\\app-debug-staging-investor.apk
${PACKAGE_NAME}         com.cartenz.oss

*** Keywords ***
Open the app
    Open Application        ${REMOTE_URL}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}  app=${APP}  automationName=appium  appPackage=${PACKAGE_NAME}
    Click Element           id=button1
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Click Element           xpath=//android.widget.Button[@text='ALLOW']
    Close All Applications