*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
点击搜索
    点击元素    //button[@onclick="searchBtn()"]

输入订单编号
    [Arguments]    ${订单编号}
    输入元素    //input[@name="kjscBusProductOrderNo"]    ${订单编号}

等待订单数量大于
    [Arguments]    ${num}=1
    [Documentation]    界面订单数量，默认大于1
    Wait Until Elements Count Gte    //tr/td[2]//a[@class="iboss-link-text"]/span    ${num}
    Sleep    2

等待订单号相同
    [Arguments]    ${订单编号}
    Wait Until Elements Text Equal    //tr/td[2]//a[@class="iboss-link-text"]/span    ${订单编号}

待分配接收选择订单
    [Arguments]    ${index}=0
    Sleep    1
    ${list}    获取元素列表    //tr[@role="row"]//input[@type="checkbox" and not(@autocomplete)]
    点击元素    ${list}[${index}]

选择订单
    [Arguments]    ${index}=0
    Sleep    1
    ${list}    获取元素列表    //div[@class="DTFC_LeftWrapper"]//input[@type="checkbox" and not(@autocomplete)]
    点击元素    ${list}[${index}]

点击确定
    点击元素    //a[text()="确定"]

断言
    [Arguments]    ${断言文本}
    Wait Until Element Is Visible    //div[@class="layui-layer-content layui-layer-padding"]
    Element Text Should Be    //div[@class="layui-layer-content layui-layer-padding"]    ${断言文本}
    Unselect Frame

私有_操作
    [Arguments]    ${value}
    点击元素    //a[@onclick="${value}"]
