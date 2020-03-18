*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_OrderF.robot
Resource          ../../4_交互层/智企平台/I_Z_OrderP.robot
Resource          ../../4_交互层/智企平台/I_Z_OrderPB.robot

*** Keywords ***
P_Z_Order_断言结算页存在并返回上一页
    I_Z_OrderF_断言结算页存在
    返回上一页

P_Z_Order_点击提交订单并支付
    I_Z_OrderF_点击提交订单并支付

P_Z_Order_断言订单支付存在
    I_Z_OrderP_断言订单支付存在

P_Z_Order_断言二维码支付文字
    I_Z_OrderP_断言二维码支付文字

P_Z_Order_点击立即支付
    I_Z_OrderP_点击立即支付

P_Z_Order_关闭二维码弹框
    I_Z_OrderP_关闭二维码弹框

P_Z_Order_点击银行转账
    I_Z_OrderP_点击银行转账

P_Z_Order_断言银行付款订单状态存在
    I_Z_OrderPB_断言订单状态存在

P_Z_Order_点击银行付款查看订单
    I_Z_OrderPB_点击查看订单
