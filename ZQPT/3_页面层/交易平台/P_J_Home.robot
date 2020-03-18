*** Settings ***
Resource          ../../4_交互层/交易平台/I_J_Home.robot

*** Keywords ***
P_J_Home_断言首页并关闭窗口
    I_J_Home_断言公司交易存在
    Close Window
