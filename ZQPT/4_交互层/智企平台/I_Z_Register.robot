*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Register_断言注册存在
    断言text正确    //div[@class="header-bar"]/label[@class="title"]    注册
