*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot
Resource          附属业务公共交互.robot

*** Keywords ***
切换审核驳回订单iframe
    切换iframe    kjsc/busorder/reversion/index.html

点击恢复办理
    附属业务公共交互.私有_操作    handling()
