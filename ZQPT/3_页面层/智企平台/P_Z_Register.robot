*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Register.robot
Resource          ../../4_交互层/智企平台/I_Z_Home.robot

*** Keywords ***
P_Z_Register_断言注册存在并回到首页
    I_Z_Register_断言注册存在
    I_Z_Home_点击回到首页图片

P_Z_Register_断言注册存在并回到上一页
    I_Z_Register_断言注册存在
    返回上一页
