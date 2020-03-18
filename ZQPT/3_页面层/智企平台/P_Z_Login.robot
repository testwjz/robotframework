*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Login.robot
Resource          ../../4_交互层/智企平台/I_Z_Home.robot

*** Keywords ***
P_Z_Login_断言登录存在
    I_Z_Login_断言登录存在

P_Z_Login_断言登录存在并回到首页
    I_Z_Login_断言登录存在
    I_Z_Home_点击回到首页图片

P_Z_Login_不输入信息点击验证码下登录
    I_Z_Login_点击验证码登录
    I_Z_Login_点击验证码登录下登录按钮
    I_Z_Login_断言提示信息    请输入手机号

P_Z_Login_不输入信息点击账号下登录
    I_Z_Login_点击账号登录
    I_Z_Login_点击账号登录下登录按钮
    I_Z_Login_断言提示信息    请输入手机号

P_Z_Login_输入信息点击账号登录
    [Arguments]    ${phone}    ${password}
    I_Z_Login_点击账号登录
    I_Z_Login_输入手机号    ${phone}
    I_Z_Login_输入密码    ${password}
    I_Z_Login_点击账号登录下登录按钮

P_Z_Login_断言找回密码并回退上一页
    I_Z_Login_断言找回密码存在（非本页）
    返回上一页

P_Z_Login_断言微信登录存在并回退上一页
    I_Z_Login_断言微信登录存在(非本页)
    返回上一页
