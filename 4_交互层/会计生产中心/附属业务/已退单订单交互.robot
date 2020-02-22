*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot
Resource          附属业务公共交互.robot

*** Keywords ***
切换已退单订单iframe
    切换iframe    kjsc/busorder/refundedlist/index.html
