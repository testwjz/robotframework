*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Help.robot

*** Keywords ***
F_Z_Help_打开浏览器并断言
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Help_断言帮助中心存在

F_Z_Help_点击下单流程
    P_Z_Help_点击下单流程
    P_Z_Help_断言下单流程界面打开

F_Z_Help_点击账户与密码
    P_Z_Help_点击账户与密码
    P_Z_Help_断言账户与密码界面打开

F_Z_Help_点击联系客服
    P_Z_Help_点击联系客服
    P_Z_Help_断言联系客服界面打开

F_Z_Help_点击线下支付
    P_Z_Help_点击线下支付
    P_Z_Help_断言线下支付界面打开

F_Z_Help_点击在线支付
    P_Z_Help_点击在线支付
    P_Z_Help_断言在线支付界面打开

F_Z_Help_点击投诉与建议
    P_Z_Help_点击投诉与建议
    P_Z_Help_断言投诉与建议界面打开

F_Z_Help_点击用户资料往来说明
    P_Z_Help_点击用户资料往来说明
    P_Z_Help_断言用户资料往来说明界面打开

F_Z_Help_点击退款说明
    P_Z_Help_点击退款说明
    P_Z_Help_断言退款说明界面打开

F_Z_Help_点击售后服务流程
    P_Z_Help_点击售后服务流程
    P_Z_Help_断言售后服务流程界面打开
