*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换附属业务待分单iframe
    切换iframe    kjsc/order/policyCoBusOrder/index.html

点击分配
    点击元素    //a[@onclick="submenuCoBusOrder('myTable','1')"]
