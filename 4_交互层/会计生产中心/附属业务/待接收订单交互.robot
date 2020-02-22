*** Settings ***
Resource          附属业务公共交互.robot
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换待接收订单iframe
    切换iframe    kjsc/busorder/waitreceivelist/index.html

点击接收
    附属业务公共交互.私有_操作    receive()

点击退回
    附属业务公共交互.私有_操作    goback()

点击移交
    附属业务公共交互.私有_操作    slip()

选择移交对象
    [Arguments]    ${移交对象}
    span选择元素    ${移交对象}    flowUser
