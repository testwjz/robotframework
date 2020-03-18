*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Order.robot
Resource          F_Z_Login.robot
Resource          F_Z_Home.robot
Resource          F_Z_Goods.robot
Resource          F_Z_Member.robot

*** Keywords ***
F_Z_Order_打开浏览器登录搜索商品下单
    [Arguments]    ${url}    ${phone}    ${password}    ${goods_name}
    F_Z_Home_打开浏览器并点击登录    ${url}
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}
    P_Z_Home_进入首页断言
    P_Z_Goods_搜索商品点击进入商品详情    ${goods_name}
    P_Z_Goods_点击立即购买
    P_Z_Order_点击提交订单并支付
    P_Z_Order_断言订单支付存在

F_Z_Order_点击呱呱支付不付款
    P_Z_Order_点击立即支付
    P_Z_Order_断言二维码支付文字
    P_Z_Order_关闭二维码弹框

F_Z_Order_点击银行转账查看订单并取消订单
    P_Z_Order_点击银行转账
    P_Z_Order_点击立即支付
    P_Z_Order_断言银行付款订单状态存在
    P_Z_Order_点击银行付款查看订单
    P_Z_Member_点击取消订单

F_Z_Order_点击银行转账查看订单并再去支付
    P_Z_Order_点击银行转账
    P_Z_Order_点击立即支付
    P_Z_Order_断言银行付款订单状态存在
    P_Z_Order_点击银行付款查看订单
    P_Z_Member_点击去支付
    P_Z_Order_断言订单支付存在
