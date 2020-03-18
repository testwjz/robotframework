*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_OrderPB_断言订单状态存在
    断言text正确    //div[@class="order-status-title-x"]//h3    订单状态

I_Z_OrderPB_点击查看订单
    点击元素    //a[text()='查看订单']
