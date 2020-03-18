*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_OrderF_断言结算页存在
    断言text正确    //div[@class="header_title_wrap"]    结算页

I_Z_OrderF_点击提交订单并支付
    点击元素    //button[@class="submit_order"]
