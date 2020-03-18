*** Settings ***
Suite Setup       F_Z_Login_打开浏览器并断言    ${login_url}
Suite Teardown    关闭浏览器
Resource          ../../2_流程层/智企平台/F_Z_Login.robot

*** Test Cases ***
1不输入信息验证码登录
    F_Z_Login_不输入信息验证码登录

2不输入信息账号登录
    F_Z_Login_不输入信息账号登录

3正常输入信息账号登录
    F_Z_Login_正常输入信息账号登录    ${phone}    ${password}    ${user_name}

4账号不存在时账号登录
    F_Z_Login_账号不存在时账号登录    13300000000    ${password}

5密码错误时账号登录
    F_Z_Login_账号不存在时账号登录    ${phone}    111111

6手机号格式错误账号登录
    F_Z_Login_手机号格式错误账号登录    133000    ${password}

7点击忘记密码
    F_Z_Login_点击忘记密码

8点击免费注册
    F_Z_Login_点击免费注册

9点击微信登录图片
    F_Z_Login_点击微信登录图片
