*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Login.robot
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Member_断言会员中心存在
    断言text正确    //div[@class="siderbar_title"]    会员中心

I_Z_Member_点击退出登录
    [Arguments]    ${user_name}
    鼠标移动在元素上    //div[@class="head-top"]//a[text()='${user_name}']
    Sleep    0.5
    点击元素    //a[text()="退出登录"]

I_Z_Member_断言会员名称正确
    [Arguments]    ${user_name}
    断言text正确    //p[@class="name"]/span    ${user_name}

I_Z_Member_点击会员中心
    点击元素    //div[@class="siderbar_title"]

I_Z_Member_点击更换头像
    点击元素    //div[@class="avatar"]/button

I_Z_Member_点击立即修改
    点击元素    //span[text()='立即修改']

I_Z_Member_点击查看订单
    点击元素    //button[contains(text(),"查看订单")]

I_Z_Member_点击查看优惠券
    点击元素    //button[contains(text(),"查看优惠券")]

I_Z_Member_点击查看礼品券
    点击元素    //button[contains(text(),"查看礼品券")]

I_Z_Member_点击查看全部订单
    点击元素    //div[contains(text(),"查看全部订单")]

I_Z_Member_随机点击查看详情
    随机点击列表元素    //span[contains(text(),"订单详情")]

I_Z_Member_随机点击再次购买
    随机点击列表元素    //p[contains(text(),"再次购买")]

I_Z_Member_点击列表栏菜单
    [Arguments]    ${menu}
    随机点击列表元素    //li[contains(text(),"${menu}")]

I_Z_Member_断言b菜单打开
    [Arguments]    ${menu}
    断言text正确    //b[text()="${menu}"]    ${menu}

I_Z_Member_断言订单详情打开
    断言text正确    //h5[text()="商品信息"]    商品信息

I_Z_Member_断言h3菜单打开
    [Arguments]    ${menu}
    断言text正确    //h3[text()="${menu}"]    ${menu}

I_Z_Member_点击取消订单
    [Arguments]    ${index}=0
    [Documentation]    对第一个订单进行取消
    指定下标点击列表元素    //a[text()='取消订单']    ${index}

I_Z_Member_弹框点击按钮
    [Arguments]    ${button_name}
    点击元素    //span[text()='${button_name}']

I_Z_Member_点击去支付
    [Arguments]    ${index}=0
    [Documentation]    默认对第一个订单点击去支付
    指定下标点击列表元素    //span[text()='去支付']    ${index}

I_Z_Member_点击顶部平台首页
    点击元素    //a[text()='平台首页']
