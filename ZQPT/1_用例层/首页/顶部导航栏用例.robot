*** Settings ***
Suite Setup       F_Z_Home_打开浏览器并断言    ${home_url}
Suite Teardown    关闭浏览器
Test Teardown
Resource          ../../2_流程层/智企平台/F_Z_Home.robot

*** Test Cases ***
1点击顶部关于我们
    F_Z_Home_点击顶部关于我们

2点击顶部消息中心
    F_Z_Home_点击顶部消息中心

3点击顶部我的顶呱呱
    F_Z_Home_点击顶部我的顶呱呱

4点击顶部购物车
    F_Z_Home_点击顶部购物车

5点击顶部免费注册
    F_Z_Home_点击顶部免费注册

6点击顶部登录
    F_Z_Home_点击顶部登录

7点击顶部平台首页
    F_Z_Home_点击顶部平台首页

8点击顶部我的订单
    F_Z_Home_点击顶部我的订单
