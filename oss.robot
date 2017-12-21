*** Settings ***
Library                 AppiumLibrary
Resource                oss_resource.robot

*** Test Cases ***
Membuka aplikasi
    Open the app

Login aplikasi
    Login the app

Melihat notifikasi
    View notification

Menutup aplikasi
    Close the app