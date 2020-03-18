*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Member.robot

*** Keywords ***
P_Z_Member_断言会员名称正确
    [Arguments]    ${user_name}
    I_Z_Member_断言会员名称正确    ${user_name}

P_Z_Member_断言会员中心存在并点击退出登录
    [Arguments]    ${user_name}
    I_Z_Member_断言会员中心存在
    I_Z_Member_点击退出登录    ${user_name}

P_Z_Member_点击更换头像
    I_Z_Member_点击更换头像

P_Z_Member_点击立即修改
    I_Z_Member_点击立即修改

P_Z_Member_点击查看订单
    I_Z_Member_点击查看订单

P_Z_Member_点击查看优惠券
    I_Z_Member_点击查看优惠券

P_Z_Member_点击查看礼品券
    I_Z_Member_点击查看礼品券

P_Z_Member_点击查看全部订单
    I_Z_Member_点击查看全部订单

P_Z_Member_随机点击查看详情
    I_Z_Member_随机点击查看详情

P_Z_Member_随机点击再次购买
    I_Z_Member_随机点击再次购买
    选择窗口    new

P_Z_Member_点击列表栏我的订单
    I_Z_Member_点击列表栏菜单    我的订单

P_Z_Member_点击列表栏我的业务
    I_Z_Member_点击列表栏菜单    我的业务

P_Z_Member_点击列表栏优惠券
    I_Z_Member_点击列表栏菜单    优惠券

P_Z_Member_点击列表栏礼品券
    I_Z_Member_点击列表栏菜单    礼品券

P_Z_Member_点击列表栏个人信息
    I_Z_Member_点击列表栏菜单    个人信息

P_Z_Member_点击列表栏地址管理
    I_Z_Member_点击列表栏菜单    地址管理

P_Z_Member_点击列表栏账户安全
    I_Z_Member_点击列表栏菜单    账户安全

P_Z_Member_点击列表栏系统消息
    I_Z_Member_点击列表栏菜单    系统消息

P_Z_Member_点击列表栏平台消息
    I_Z_Member_点击列表栏菜单    平台消息

P_Z_Member_点击列表栏优惠促销
    I_Z_Member_点击列表栏菜单    优惠促销

P_Z_Member_断言我的订单打开
    I_Z_Member_断言b菜单打开    我的订单

P_Z_Member_断言订单详情打开
    I_Z_Member_断言订单详情打开

P_Z_Member_断言我的业务打开
    I_Z_Member_断言b菜单打开    我的业务

P_Z_Member_断言优惠券打开
    I_Z_Member_断言b菜单打开    优惠券

P_Z_Member_断言礼品券打开
    I_Z_Member_断言b菜单打开    礼品券

P_Z_Member_断言个人信息打开
    I_Z_Member_断言h3菜单打开    个人信息

P_Z_Member_断言地址管理打开
    I_Z_Member_断言b菜单打开    地址管理

P_Z_Member_断言账户安全打开
    I_Z_Member_断言h3菜单打开    账户安全

P_Z_Member_断言消息通知打开
    I_Z_Member_断言b菜单打开    消息通知

P_Z_Member_点击会员中心
    I_Z_Member_点击会员中心

P_Z_Member_点击取消订单
    I_Z_Member_点击取消订单
    I_Z_Member_弹框点击按钮    确 定

P_Z_Member_点击去支付
    I_Z_Member_点击去支付
    选择窗口    new

P_Z_Member_点击平台首页
    I_Z_Member_点击顶部平台首页
