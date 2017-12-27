*** Settings ***
Library                 AppiumLibrary
Resource                tracking_resource.robot

*** Test Cases ***
Membuka aplikasi
    Open the app

Login aplikasi
    Login the app

Mencari komplain
    Searching complaint

Menutup aplikasi
    Close the app