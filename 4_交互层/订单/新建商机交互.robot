*** Settings ***
Documentation     退出时建议直接刷新界面即可再次执行下一条用例
Library           SeleniumLibrary
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换新建商机iframe
    [Documentation]    frame src地址需要查看界面元素找到
    切换iframe    bus/sell/add_emp_bus.html

输入手机号码
    [Arguments]    ${电话号码}
    Wait Until Element Is Visible    checkInfoText
    Input Text    checkInfoText    ${电话号码}

点击搜索
    点击元素    //button[@id="buttonsearch"]

获取客户名称
    [Documentation]    返回客户名称
    Wait Until Element Is Visible    customerName
    ${customerName}    Get Element Attribute    customerName    value
    [Return]    ${customerName}

输入客户名称
    [Arguments]    ${客户名称}
    输入元素    customerName    ${客户名称}

输入备注信息
    [Arguments]    ${备注信息}
    输入元素    description    ${备注信息}

点击保存
    点击元素    addBtn

选择业态
    [Arguments]    ${业态名称}
    联级选择    businessTypeName    ${业态名称}

选择区域
    [Arguments]    ${区域}
    联级选择    province    ${区域}

确认保存
    点击元素    //a[text()="确定"]

新增商机提示断言
    [Arguments]    ${断言内容}
    Wait Until Element Is Visible    //*[@type='dialog']
    Element Text Should Be    //*[@type='dialog']    ${断言内容}

联级选择
    [Arguments]    ${loc}    ${text}
    Set CascadeSelect    ${loc}    ${text}
