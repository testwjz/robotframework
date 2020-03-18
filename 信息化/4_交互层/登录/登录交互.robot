*** Settings ***
Library           SeleniumLibrary
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Variables ***

*** Keywords ***
输入用户名
    [Arguments]    ${username}
    输入元素    //input[@id="loginName"]    ${username}

输入密码
    [Arguments]    ${password}
    输入元素    //input[@id="password"]    ${password}

点击登录按钮
    点击元素    //a[@id="loginBtn"]

对异常登录进行断言
    [Arguments]    ${断言内容}
    Wait Until Element Is Visible    //p[@id="errTip"]
    Element Text Should Be    //p[@id="errTip"]    ${断言内容}

对正常登录进行断言
    [Arguments]    ${断言title名称}
    Sleep    1
    Title Should Be    ${断言title名称}

登录断言
    [Arguments]    ${判断成功与否}    ${断言内容}
    Run Keyword If    '${判断成功与否}'=='失败'    对异常登录进行断言    ${断言内容}
    ...    ELSE IF    '${判断成功与否}'=='成功'    对正常登录进行断言    ${断言内容}

密码登录
    点击元素    //a[text()='密码登录']
