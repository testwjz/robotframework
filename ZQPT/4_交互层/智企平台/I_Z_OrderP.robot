*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_OrderP_断言订单支付存在
    断言text正确    //div[@class="header_title_wrap"]//strong    订单支付

I_Z_OrderP_断言二维码支付文字
    断言text正确    //div[@id="pay_dalog"]/h2    请使用支付宝/微信扫描二维码进行支付

I_Z_OrderP_点击立即支付
    点击元素    //a[text()='立即支付']

I_Z_OrderP_关闭二维码弹框
    点击元素    //div[@id="pay_dalog"]/i

I_Z_OrderP_点击银行转账
    点击元素    //li[@data-id="bank"]/input
