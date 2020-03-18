*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Member.robot
Resource          F_Z_Login.robot
Resource          ../../3_页面层/智企平台/P_Z_Home.robot

*** Keywords ***
F_Z_Member_打开浏览器并登录
    [Arguments]    ${url}    ${user_name}    ${phone}    ${password}
    F_Z_Login_打开浏览器并断言    ${url}
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}
    P_Z_Member_断言会员名称正确    ${user_name}

F_Z_Member_点击更换头像
    P_Z_Member_点击更换头像
    P_Z_Member_断言个人信息打开
    P_Z_Member_点击会员中心

F_Z_Member_点击立即修改
    P_Z_Member_点击立即修改
    P_Z_Member_断言个人信息打开
    P_Z_Member_点击会员中心

F_Z_Member_点击查看订单
    P_Z_Member_点击查看订单
    P_Z_Member_断言我的订单打开
    P_Z_Member_点击会员中心

F_Z_Member_点击查看优惠券
    P_Z_Member_点击查看优惠券
    P_Z_Member_断言优惠券打开
    P_Z_Member_点击会员中心

F_Z_Member_点击查看礼品券
    P_Z_Member_点击查看礼品券
    P_Z_Member_断言礼品券打开
    P_Z_Member_点击会员中心

F_Z_Member_点击查看全部订单
    P_Z_Member_点击查看全部订单
    P_Z_Member_断言我的订单打开
    P_Z_Member_点击会员中心

F_Z_Member_点击查看详情
    P_Z_Member_随机点击查看详情
    P_Z_Member_断言订单详情打开
    P_Z_Member_点击会员中心

F_Z_Member_点击再次购买
    P_Z_Member_随机点击再次购买
    P_Z_Home_断言产品分类并关闭窗口
    选择窗口    main

F_Z_Member_点击列表栏我的订单
    P_Z_Member_点击列表栏我的订单
    P_Z_Member_断言我的订单打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏我的业务
    P_Z_Member_点击列表栏我的业务
    P_Z_Member_断言我的业务打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏优惠券
    P_Z_Member_点击列表栏优惠券
    P_Z_Member_断言优惠券打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏礼品券
    P_Z_Member_点击列表栏礼品券
    P_Z_Member_断言礼品券打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏个人信息
    P_Z_Member_点击列表栏个人信息
    P_Z_Member_断言个人信息打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏地址管理
    P_Z_Member_点击列表栏地址管理
    P_Z_Member_断言地址管理打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏账户安全
    P_Z_Member_点击列表栏账户安全
    P_Z_Member_断言账户安全打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏系统消息
    P_Z_Member_点击列表栏系统消息
    P_Z_Member_断言消息通知打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏平台消息
    P_Z_Member_点击列表栏平台消息
    P_Z_Member_断言消息通知打开
    P_Z_Member_点击会员中心

F_Z_Member_点击列表栏优惠促销
    P_Z_Member_点击列表栏优惠促销
    P_Z_Member_断言消息通知打开
    P_Z_Member_点击会员中心

F_Z_Member_点击平台首页并断言
    P_Z_Member_点击平台首页
    选择窗口    new
    P_Z_Home_进入首页断言
