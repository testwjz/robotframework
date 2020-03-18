*** Settings ***
Suite Setup
Suite Teardown
Test Setup        F_Z_Order_打开浏览器登录搜索商品下单    ${home_url}    ${phone}    ${password}    ${goods_name}
Test Teardown     关闭浏览器
Force Tags        test
Resource          ../../2_流程层/智企平台/F_Z_Order.robot

*** Test Cases ***
1呱呱支付不付款
    F_Z_Order_点击呱呱支付不付款

2银行转账查看订单并取消订单
    F_Z_Order_点击银行转账查看订单并取消订单

3银行转账查看订单并再去支付
    F_Z_Order_点击银行转账查看订单并再去支付
