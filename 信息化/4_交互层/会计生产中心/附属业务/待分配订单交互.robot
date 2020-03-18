*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot
Resource          附属业务公共交互.robot

*** Keywords ***
切换待分配订单iframe
    切换iframe    sc/kjsc/busorder/waitallotlist/index.html

点击分配
    附属业务公共交互.私有_操作    allot()

选择分配员工
    [Arguments]    ${分配员工}
    span选择元素    ${分配员工}    flowUser

点击移交
    附属业务公共交互.私有_操作    transfer()

选择移交对象
    [Arguments]    ${移交对象}
    点击元素    //input[@id="selectTreeAddressId"]
    输入元素    //input[@id="selectTreeAddressId"]    ${移交对象}
    点击元素    //span[text()='${移交对象}']

移交点击提交
    Sleep    0.5
    点击元素    //a[text()="提交"]
