*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot
Resource          附属业务公共交互.robot

*** Keywords ***
切换待审核订单iframe
    切换iframe    kjsc/busorder/refundauditlist/index.html

点击审核
    附属业务公共交互.私有_操作    audit(0)

选择下一级处理人
    [Arguments]    ${下一级处理人}
    span选择元素    ${下一级处理人}    flowUser

点击不通过
    Sleep    1
    点击元素    //input[@onclick="noPass()"]

输入原因
    [Arguments]    ${驳回原因}
    输入元素    //textarea    ${驳回原因}

点击退回
    附属业务公共交互.私有_操作    recover()

点击更换审核人
    附属业务公共交互.私有_操作    replaceApply()

选择审核人
    [Arguments]    ${审核人}
    span选择元素    ${审核人}    flowUser
