*** Settings ***
Resource          ../../4_交互层/登录/登录交互.robot

*** Keywords ***
输入用户名密码登录
    [Arguments]    ${用户名}    ${密码}
    Maximize Browser Window
    登录交互.密码登录
    登录交互.输入用户名    ${用户名}
    登录交互.输入密码    ${密码}
    登录交互.点击登录按钮
