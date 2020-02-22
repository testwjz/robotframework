*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换待审核订单iframe
    切换iframe    orf/order/initAuditOrder.html

审核订单
    [Arguments]    ${订单编号}    # 输入订单编号进行订单审核
    输入信息搜索    //input[@id="keyword"]    //td[@data-dt-row]//a[text()='审核']    //button[text()='搜索']    ${订单编号}
    点击元素    //td[@data-dt-row]//a[text()='审核']
    Unselect Frame

切换订单详情iframe
    切换iframe    orf/order/orderDetailAudited.do?id

确认审核通过
    点击元素    //a[text()='审核通过']
    点击元素    //a[text()='确定']

断言审核成功
    [Documentation]    审核成功断言
    Wait Until Element Is Visible    //div[@class="layui-layer-content layui-layer-padding"]
    Element Should Contain    //div[@class="layui-layer-content layui-layer-padding"]    审核成功
    Unselect Frame
