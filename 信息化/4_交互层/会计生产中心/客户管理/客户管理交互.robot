*** Settings ***
Resource          ../../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
搜索_会计顾问分配
    [Arguments]    ${客户信息}
    客户管理交互.私有_搜索    ${客户信息}    //tr/td[3]/ul[@class="myTable_info_list"]/li[1]

搜索_客户/流失
    [Arguments]    ${客户信息}
    客户管理交互.私有_搜索    ${客户信息}    //td[not(@data-dt-row)]//span[@class="list-normalTitle"]

搜索_会计顾问接收
    [Arguments]    ${客户信息}
    客户管理交互.私有_搜索    ${客户信息}    //div[@class="fl"]/ul[@class="myTable_info_list"]/li[1]

切换顾问待分配iframe
    切换iframe    kjsc/cusorder/waitAllot.html

顾问分配
    [Arguments]    ${财务顾问}    ${记账会计}
    客户管理交互.私有_分配
    切换iframe    kjsc/cusorder/layer/allotLayer.html
    span选择元素    ${财务顾问}    adviserId
    span选择元素    ${记账会计}
    点击元素    //a[text()="确定"]
    Unselect Frame
    客户管理交互.切换顾问待分配iframe
    客户管理交互.私有_断言    分配成功！

切换会计待分配iframe
    切换iframe    kjsc/cusorder/accountWaitAllot.html

会计分配
    [Arguments]    ${记账会计}
    客户管理交互.私有_分配
    span选择元素    ${记账会计}
    点击元素    //a[text()="确定"]
    客户管理交互.私有_断言    分配成功！

切换顾问待接收iframe
    切换iframe    kjsc/cusorder/adviserWaitRecieve.html

切换会计待接收iframe
    切换iframe    kjsc/cusorder/accountWaitRecieve.html

顾问/会计接收
    客户管理交互.私有_接收
    点击元素    //a[text()="确定"]
    客户管理交互.私有_断言    接收成功！

顾问/会计退回
    客户管理交互.私有_退回
    点击元素    //a[text()="确定"]
    客户管理交互.私有_断言    接收成功！

切换流失处理iframe
    切换iframe    kjsc/cusorder/lossApplyPage.html

流失处理_无下节点
    [Arguments]    ${签署审核意见}    ${断言成功提示}    ${value}=success    # 默认挽留成功
    [Documentation]    挽留成功value：success
    ...    审核通过value：failed
    ...    驳回value：reject
    客户管理交互.私有_选择信息    handlePop
    切换iframe    cusorder/layer/handleApply.html
    点击元素    //input[@name="detainResult" and @value='${value}']
    输入元素    //textarea[@name="note"]    ${签署审核意见}
    点击元素    //a[@onclick="layerSubmit()"]
    Unselect Frame
    客户管理交互.切换流失处理iframe
    客户管理交互.私有_断言    ${断言成功提示}

流失处理_有下节点
    [Arguments]    ${签署审核意见}    ${下一节点处理人}    ${断言成功提示}    ${value}=failed    # 默认审核通过
    [Documentation]    挽留成功value：success
    ...    审核通过value：failed
    ...    驳回value：reject
    ...
    ...    仅审核通过且有下级审核人
    客户管理交互.私有_选择信息    handlePop
    切换iframe    cusorder/layer/handleApply.html
    点击元素    //input[@name="detainResult" and @value='${value}']
    span选择元素    ${下一节点处理人}    userId
    输入元素    //textarea[@name="note"]    ${签署审核意见}
    点击元素    //a[@onclick="layerSubmit()"]
    Unselect Frame
    客户管理交互.切换流失处理iframe
    客户管理交互.私有_断言    ${断言成功提示}

切换客户列表iframe
    切换iframe    kjsc/cusorder/list.html

流失申请
    [Arguments]    ${开始日期}    ${结束日期}    ${司龄}    ${合作时间}    ${套餐价格}    ${收据编号}
    ...    ${流失原因}    ${流失归属人}    ${下一节点处理人}
    客户管理交互.私有_选择信息    lossPop
    切换iframe    cusorder/layer/lossApply.html
    JS移除属性readonly(name)    contractDateStart
    输入元素    //input[@name="contractDateStart"]    ${开始日期}
    JS移除属性readonly(name)    contractDateEnd
    输入元素    //input[@name="contractDateEnd"]    ${结束日期}
    输入元素    //input[@name="companyAge"]    ${司龄}
    JS移除属性readonly(name)    cooperateDate
    输入元素    //input[@name="cooperateDate"]    ${合作时间}
    输入元素    //input[@name="packagePrice"]    ${套餐价格}
    输入元素    //input[@name="receiptNo"]    ${收据编号}
    点击元素    //input[@name="lossTypeRoot" and @text="${流失原因}"]
    span选择元素    ${流失归属人}    lossBelongerId
    span选择元素    ${下一节点处理人}    userId
    点击元素    //a[@onclick="layerSubmit()"]
    Unselect Frame
    客户管理交互.切换客户列表iframe
    客户管理交互.私有_断言    流失申请提交成功！

私有_搜索
    [Arguments]    ${客户信息}    ${lo}
    输入元素    //input[@name="coInfo"]    ${客户信息}
    Wait Until Elements Count Gte    ${lo}    1
    Sleep    2
    点击元素    //button[@onclick="reloadDataTable()"]
    Wait Until Elements Text Contain    ${lo}    ${客户信息}

私有_接收
    客户管理交互.私有_选择信息    recievePop

私有_分配
    客户管理交互.私有_选择信息    allotPop

私有_退回
    客户管理交互.私有_选择信息    refusePop

私有_断言
    [Arguments]    ${断言文本}
    Wait Until Element Is Visible    //div[@class="layui-layer-content layui-layer-padding"]
    Element Text Should Be    //div[@class="layui-layer-content layui-layer-padding"]    ${断言文本}
    Unselect Frame

私有_选择信息
    [Arguments]    ${method}    ${index}=0
    Sleep    2
    ${list}    获取元素列表    //td[@data-dt-row]/input[@type="checkbox"]
    点击元素    ${list}[${index}]
    点击元素    //a[@onclick="${method}()"]
