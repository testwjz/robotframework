*** Settings ***
Suite Setup       F_Z_Member_打开浏览器并登录    ${login_url}    ${user_name}    ${phone}    ${password}
Suite Teardown    关闭浏览器
Resource          ../../2_流程层/智企平台/F_Z_Member.robot

*** Test Cases ***
1点击更换头像
    F_Z_Member_点击更换头像

2点击立即修改
    F_Z_Member_点击立即修改

3点击查看订单
    F_Z_Member_点击查看订单

4点击查看优惠券
    F_Z_Member_点击查看优惠券

5点击查看礼品券
    F_Z_Member_点击查看礼品券

6点击查看全部订单
    F_Z_Member_点击查看全部订单

7点击查看详情
    F_Z_Member_点击查看详情

8点击再次购买
    F_Z_Member_点击再次购买

9点击列表栏我的订单
    F_Z_Member_点击列表栏我的订单

10点击列表栏我的业务
    F_Z_Member_点击列表栏我的业务

11点击列表栏优惠券
    F_Z_Member_点击列表栏优惠券

12点击列表栏礼品券
    F_Z_Member_点击列表栏礼品券

13点击列表栏个人信息
    F_Z_Member_点击列表栏个人信息

14点击列表栏地址管理
    F_Z_Member_点击列表栏地址管理

15点击列表栏账户安全
    F_Z_Member_点击列表栏账户安全

16点击列表栏系统消息
    F_Z_Member_点击列表栏系统消息

17点击列表栏平台消息
    F_Z_Member_点击列表栏平台消息

18点击列表栏优惠促销
    F_Z_Member_点击列表栏优惠促销
