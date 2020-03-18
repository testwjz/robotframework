*** Settings ***
Suite Setup       F_Z_Help_打开浏览器并断言    ${help_url}
Suite Teardown    关闭浏览器
Force Tags        t
Resource          ../../2_流程层/智企平台/F_Z_Help.robot

*** Test Cases ***
1点击下单流程
    F_Z_Help_点击下单流程

2点击账户与密码
    F_Z_Help_点击账户与密码

3点击联系客服
    F_Z_Help_点击联系客服

4点击线下支付
    F_Z_Help_点击线下支付

5点击在线支付
    F_Z_Help_点击在线支付

6点击投诉与建议
    F_Z_Help_点击投诉与建议

7点击用户资料往来说明
    F_Z_Help_点击用户资料往来说明

8点击退款说明
    F_Z_Help_点击退款说明

9点击售后服务流程
    F_Z_Help_点击售后服务流程
