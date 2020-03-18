*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Login.robot
Resource          ../../3_页面层/智企平台/P_Z_Member.robot
Resource          ../../3_页面层/智企平台/P_Z_Register.robot

*** Keywords ***
F_Z_Login_打开浏览器并断言
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Login_断言登录存在

F_Z_Login_打开浏览器登录进入会员中心
    [Arguments]    ${url}    ${phone}    ${password}
    打开浏览器    ${url}
    P_Z_Login_断言登录存在
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}

F_Z_Login_不输入信息验证码登录
    P_Z_Login_不输入信息点击验证码下登录

F_Z_Login_不输入信息账号登录
    P_Z_Login_不输入信息点击账号下登录

F_Z_Login_正常输入信息账号登录
    [Arguments]    ${phone}    ${password}    ${user_name}
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}
    P_Z_Member_断言会员中心存在并点击退出登录    ${user_name}

F_Z_Login_账号不存在时账号登录
    [Arguments]    ${phone}    ${password}
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}
    I_Z_Login_断言提示信息    用户名或密码错误

F_Z_Login_手机号格式错误账号登录
    [Arguments]    ${phone}    ${password}
    P_Z_Login_输入信息点击账号登录    ${phone}    ${password}
    I_Z_Login_断言提示信息    请输入有效的手机号

F_Z_Login_点击忘记密码
    I_Z_Login_点击忘记密码
    P_Z_Login_断言找回密码并回退上一页

F_Z_Login_点击免费注册
    I_Z_Login_点击免费注册
    P_Z_Register_断言注册存在并回到上一页

F_Z_Login_点击微信登录图片
    I_Z_Login_点击微信登录图片
    P_Z_Login_断言微信登录存在并回退上一页
