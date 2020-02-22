*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot
Resource          附属业务公共交互.robot

*** Keywords ***
切换生产中订单iframe
    切换iframe    kjsc/busorder/orderlist/index.html

点击创建工单
    附属业务公共交互.私有_操作    doCreate()

输入详细地址
    [Arguments]    ${详细地址}
    输入元素    //input[@name="detailedAddress"]    ${详细地址}

输入联系人
    [Arguments]    ${联系人}
    输入元素    //input[@name="contactName"]    ${联系人}

输入联系方式
    [Arguments]    ${联系方式}
    输入元素    //input[@name="contactPhone"]    ${联系方式}

输入服务时间
    [Arguments]    ${服务时间}
    JS移除属性readonly(name)    serviceTime
    输入元素    //input[@name="serviceTime"]    ${服务时间}

选择工单处理人
    [Arguments]    ${处理人}
    span选择元素    ${处理人}    processingPersonId

选择办理事项
    [Arguments]    ${index_first}    ${index_left}
    ${list}    获取元素列表    //ul[@id="shuttle_box_first"]/li
    点击元素    ${list}[${index_first}]
    Sleep    2
    ${list}    获取元素列表    //ul[@id="shuttle_box_left"]/li
    点击元素    ${list}[${index_left}]
    点击元素    //a[@id="shuttle_box_toRight"]

点击退单
    附属业务公共交互.私有_操作    refund()

选择退单处理人
    [Arguments]    ${处理人}
    span选择元素    ${处理人}    auditUser

选择退单原因
    [Arguments]    ${退单原因}
    select选择元素    //select[@id="refundReason"]    ${退单原因}

点击更新进度
    [Arguments]    ${index}=0
    [Documentation]    更新进度，默认更新第一个
    ${list}    获取元素列表    //div[@class="DTFC_RightWrapper"]//a[text()="更新进度"]
    点击元素    ${list}[${index}]

选择节点操作人
    [Arguments]    ${节点操作人}
    span选择元素    ${节点操作人}    flowUser

选择下一节点
    [Arguments]    ${下一节点}
    select选择元素    //select[@name="nodeId,nodeName"]    ${下一节点}
