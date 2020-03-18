*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换代理记账待分单iframe
    切换iframe    kjsc/order/policySubmenu/index.html

点击分配
    点击元素    //a[@onclick="submenuOrder('myTable')"]
