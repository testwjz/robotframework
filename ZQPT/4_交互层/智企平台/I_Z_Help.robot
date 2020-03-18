*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Help_断言帮助中心存在
    断言text正确    //div[@class="top_banner"]/h3    帮助中心

I_Z_Help_点击帮助菜单
    [Arguments]    ${menu_name}
    点击元素    //li[text()='${menu_name}']

I_Z_Help_断言菜单选取成功
    [Arguments]    ${text}
    断言text正确    //div[@class="item_title one-line"]    ${text}
