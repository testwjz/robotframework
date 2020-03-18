*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Aboutus.robot

*** Keywords ***
F_Z_Aboutus_打开浏览器进入公司介绍并断言
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Aboutus_断言公司介绍界面打开

F_Z_Aboutus_点击发展历程
    P_Z_Aboutus_点击发展历程
    P_Z_Aboutus_断言发展历程界面打开

F_Z_Aboutus_点击企业荣誉
    P_Z_Aboutus_点击企业荣誉
    P_Z_Aboutus_断言企业荣誉界面打开

F_Z_Aboutus_点击企业文化
    P_Z_Aboutus_点击企业文化
    P_Z_Aboutus_断言企业文化界面打开

F_Z_Aboutus_点击公司地址
    P_Z_Aboutus_点击公司地址
    P_Z_Aboutus_断言公司地址界面打开
