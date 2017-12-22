*** Settings ***
Library                 AppiumLibrary
Resource                register_resource.robot

*** Test Cases ***
Membuka aplikasi
    Open the app

Mendaftar user
    Register user

# Menutup aplikasi
#     Close the app