*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Aboutus.robot
Resource          ../../4_交互层/智企平台/I_Z_Home.robot

*** Keywords ***
P_Z_Aboutus_断言公司介绍存在并回到首页
    I_Z_Aboutus_断言title存在    公司介绍
    I_Z_Home_点击回到首页图片

P_Z_Aboutus_断言公司介绍界面打开
    I_Z_Aboutus_断言title存在    公司介绍
    I_Z_Aboutus_断言顶呱呱集团发展史存在
    I_Z_Aboutus_断言顶呱呱集团布局存在

P_Z_Aboutus_断言发展历程界面打开
    选择窗口    new
    I_Z_Aboutus_断言title存在    发展历程
    I_Z_Aboutus_断言发展历程存在

P_Z_Aboutus_断言企业荣誉界面打开
    选择窗口    new
    I_Z_Aboutus_断言title存在    企业荣誉
    I_Z_Aboutus_断言企业荣誉存在

P_Z_Aboutus_断言企业文化界面打开
    选择窗口    new
    I_Z_Aboutus_断言title存在    企业文化
    I_Z_Aboutus_断言顶呱呱核心理念存在

P_Z_Aboutus_断言公司地址界面打开
    选择窗口    new
    I_Z_Aboutus_断言title存在    公司地址
    I_Z_Aboutus_断言分公司联系方式存在

P_Z_Aboutus_点击公司介绍
    I_Z_Aboutus_点击banner菜单    公司介绍

P_Z_Aboutus_点击发展历程
    I_Z_Aboutus_点击banner菜单    发展历程

P_Z_Aboutus_点击企业荣誉
    I_Z_Aboutus_点击banner菜单    企业荣誉

P_Z_Aboutus_点击企业文化
    I_Z_Aboutus_点击banner菜单    企业文化

P_Z_Aboutus_点击公司地址
    I_Z_Aboutus_点击banner菜单    公司地址
