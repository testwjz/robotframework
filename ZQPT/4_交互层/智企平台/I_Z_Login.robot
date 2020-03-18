*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Login_打开浏览器
    [Arguments]    ${url}
    打开浏览器    ${url}
    I_Z_Login_断言登录存在

I_Z_Login_断言登录存在
    断言text正确    //div[@class="header-bar"]/label[@class="title"]    登录

I_Z_Login_点击验证码登录
    点击元素    //a[text()="验证码登录"]

I_Z_Login_点击验证码登录下登录按钮
    点击元素    //div[@class="box active code-login"]//button[@class="block-btn blue-btn"]

I_Z_Login_点击账号登录
    点击元素    //a[text()="账号登录"]

I_Z_Login_点击账号登录下登录按钮
    点击元素    //div[@class="box account-login"]//button[@class="block-btn blue-btn"]

I_Z_Login_断言提示信息
    [Arguments]    ${text}
    断言text正确    //span[@class="tip-txt"]    ${text}

I_Z_Login_断言提示用户名或密码错误
    断言text正确    //span[@class="tip-txt"]    用户名或密码错误

I_Z_Login_点击忘记密码
    点击元素    //a[text()="忘记密码"]

I_Z_Login_点击免费注册
    点击元素    //a[text()="免费注册"]

I_Z_Login_点击微信登录图片
    点击元素    //img[@alt="微信登录"]

I_Z_Login_断言微信登录存在(非本页)
    断言text正确    //div[@class="title"]    微信登录

I_Z_Login_输入手机号
    [Arguments]    ${phone}
    输入元素    //input[@id="username"]    ${phone}

I_Z_Login_输入密码
    [Arguments]    ${password}
    #    JS移除属性readonly(id)    password
    输入元素    //input[@id="password"]    ${password}

I_Z_Login_断言找回密码存在（非本页）
    断言text正确    //div[@class="header-bar"]/label[@class="title"]    找回密码
