*** Settings ***
Resource          common.robot

*** Keywords ***
span选择元素
    [Arguments]    ${人员}    ${type}=accountId
    [Documentation]    IBOSS公共span标签选取元素
    点击元素    //span[@class="select2-selection__rendered" and contains(@id,"${type}")]
    输入元素    //input[@type="search"]    ${人员}
    点击元素    //ul[@class="select2-results__options"]/li[contains(text(),"${人员}")]

切换iframe
    [Arguments]    ${iframe_src}
    [Documentation]    IBOSS公共切换frame操作
    Wait Until Element Is Visible    //iframe[contains(@src,'${iframe_src}')]
    Select Frame    //iframe[contains(@src,'${iframe_src}')]
    Sleep    1

输入信息搜索
    [Arguments]    ${输入框loc}    ${元素列表loc}    ${搜索按钮loc}    ${订单编号}    ${元素数量-搜索前}=1    ${元素数量-搜索后}=1
    [Documentation]    针对订单认款等输入订单号或其他关键字进行搜索界面加载等待处理，默认进入界面有1条记录，搜索后结果为1条
    输入元素    ${输入框loc}    ${订单编号}
    Wait Until Elements Count Gte    ${元素列表loc}    ${元素数量-搜索前}
    点击元素    ${搜索按钮loc}
    Wait Until Elements Count Is    ${元素列表loc}    ${元素数量-搜索后}
