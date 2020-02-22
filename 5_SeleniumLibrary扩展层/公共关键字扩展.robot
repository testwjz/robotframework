*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://略

*** Keywords ***
获取随机数
    [Arguments]    ${随机数}
    ${随机数}    evaluate    random.randint(10000000,99999999)    random

点击元素
    [Arguments]    ${loc}
    Wait Until Element Is Visible    ${loc}
    Sleep    0.5
    Click Element    ${loc}

输入元素
    [Arguments]    ${locaor}    ${输入内容}
    Wait Until Element Is Visible    ${locaor}
    Sleep    0.5
    Clear Element Text    ${locaor}
    Input Text    ${locaor}    ${输入内容}

select选择元素
    [Arguments]    ${select_loc}    ${text}
    [Documentation]    针对select进行元素选择
    ...
    ...    通过标签text决定选择哪个
    Wait Until Element Is Visible    ${select_loc}
    Sleep    1
    Select From List By Label    ${select_loc}    ${text}

span选择元素
    [Arguments]    ${人员}    ${type}=accountId
    点击元素    //span[@class="select2-selection__rendered" and contains(@id,"${type}")]
    输入元素    //input[@type="search"]    ${人员}
    点击元素    //ul[@class="select2-results__options"]/li[contains(text(),"${人员}")]

切换iframe
    [Arguments]    ${iframe_src}
    Wait Until Element Is Visible    //iframe[contains(@src,'${iframe_src}')]
    Select Frame    //iframe[contains(@src,'${iframe_src}')]
    Sleep    1

获取元素列表
    [Arguments]    ${loc}    # 获取元素列表数据，使用${loc}[0],获取第一个，依次类推
    Wait Until Element Is Visible    ${loc}
    Sleep    1
    ${elements}    Get WebElements    ${loc}
    [Return]    ${elements}

点击头部菜单
    [Arguments]    ${头部菜单}
    Sleep    1
    点击元素    //li[@role="menuitem"]//div[text()='${头部菜单}']

点击头部下拉菜单
    [Arguments]    ${下拉菜单}
    点击元素    //li[contains(text(),'${下拉菜单}')]

点击财务头部菜单
    Sleep    1
    点击元素    //li[@role="menuitem"]//span[text()='财务']

点击生产头部菜单
    Sleep    1
    点击元素    //div[text()='生产']

点击一级菜单
    [Arguments]    ${一级菜单}
    点击元素    //li[@class='left-menu-lv1']//span[@class='left-menu-span'and text()='${一级菜单}']

点击二级菜单
    [Arguments]    ${二级菜单}
    Sleep    0.5
    Wait Until Element Is Visible    //span[@class='left-menu-span'and contains(text(),'${二级菜单}')]
    Scroll Element Into View    //span[@class='left-menu-span'and contains(text(),'${二级菜单}')]
    点击元素    //li[@class='left-menu-lv2 is-background']//span[@class='left-menu-span'and text()='${二级菜单}']

点击三级菜单
    [Arguments]    ${三级菜单}
    Sleep    0.5
    Wait Until Element Is Visible    //span[@class='left-menu-span'and text()=" ${三级菜单}"]
    Scroll Element Into View    //span[@class='left-menu-span'and text()=" ${三级菜单}"]
    点击元素    //span[@class='left-menu-span'and text()=" ${三级菜单}"]

关闭导航菜单
    [Arguments]    ${菜单名称}
    点击元素    //span[@class="tabNameText" and text()="${菜单名称}"]/following-sibling::span[@class="tabClose"]

刷新页面
    [Documentation]    刷新界面，并根据是否有工作台断言
    Sleep    1.5
    Reload Page
    Sleep    1.5

输入信息搜索
    [Arguments]    ${输入框loc}    ${元素列表loc}    ${搜索按钮loc}    ${订单编号}    ${元素数量-搜索前}=1    ${元素数量-搜索后}=1
    [Documentation]    针对订单认款等输入订单号或其他关键字进行搜索界面加载等待处理，默认进入界面有1条记录，搜索后结果为1条
    输入元素    ${输入框loc}    ${订单编号}
    Wait Until Elements Count Gte    ${元素列表loc}    ${元素数量-搜索前}
    点击元素    ${搜索按钮loc}
    Wait Until Elements Count Is    ${元素列表loc}    ${元素数量-搜索后}

JS移除属性readonly(id)
    [Arguments]    ${id}    # 对指定元素的readonly属性进行移除,通过id定位
    Execute Javascript    document.getElementById('${id}').removeAttribute('readonly')

JS移除属性readonly(name)
    [Arguments]    ${name}    # 对指定元素的readonly属性进行移除,通过name定位
    Execute Javascript    document.getElementsByName('${name}')[0].removeAttribute('readonly')

JS追加html
    [Arguments]    ${id_name}    ${html}    # 属性id值，插入的html代码块
    Execute Javascript    var html = document.getElementById("${id_name}").innerHTML;document.getElementById('${id_name}').innerHTML='${html}'+html;
