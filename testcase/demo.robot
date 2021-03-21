*** Settings ***
Documentation       工具人学堂演示代码


*** Variables ***


*** Test Cases ***
Login App
    [Documentation]     模拟登录应用
    [Tags]              Demo
    log    登录成功

Logout App
    [Documentation]     模拟登出应用
    [Tags]              Demo
    log    登出成功


*** Keywords ***
