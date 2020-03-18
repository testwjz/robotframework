*** Settings ***
Library           SeleniumLibrary

*** Variables ***

*** Keywords ***
获取随机数
    [Arguments]    ${min}    ${max}
    [Documentation]    传入最小值和最大值，如0,3（整型数值类型）
    ...
    ...    返回值为[0,3]中随机一个数
    ${随机数}    evaluate    random.randint(${min},${max})    random
    [Return]    ${随机数}

点击元素
    [Arguments]    ${loc}    ${time}=1
    [Documentation]    传入元素位置、可选参数【time】
    ...
    ...    对元素位置进行点击操作
    Wait Until Element Is Visible    ${loc}
    Sleep    ${time}
    Click Element    ${loc}

输入元素
    [Arguments]    ${locaor}    ${输入内容}    ${time}=0.5
    [Documentation]    传入元素位置、输入内容、可选参数【time】
    ...
    ...    模拟输入操作，将输入内容输入到元素位置上（首先清空元素内容），默认延迟0.5秒
    Wait Until Element Is Visible    ${locaor}
    Sleep    ${time}
    Click Element    ${locaor}
    Clear Element Text    ${locaor}
    Input Text    ${locaor}    ${输入内容}

select选择元素
    [Arguments]    ${select_loc}    ${text}    ${time}=0.5
    [Documentation]    针对select进行元素选择
    ...
    ...    通过标签text决定选择哪个
    Wait Until Element Is Visible    ${select_loc}
    Sleep    ${time}
    Select From List By Label    ${select_loc}    ${text}

刷新页面
    [Arguments]    ${time}=0.5
    [Documentation]    刷新界面
    sleep    ${time}
    Reload Page

JS移除属性readonly(id)
    [Arguments]    ${id}
    [Documentation]    对指定元素的readonly属性进行移除，通过id定位
    Execute Javascript    document.getElementById('${id}').removeAttribute('readonly')

JS移除属性readonly(name)
    [Arguments]    ${name}
    [Documentation]    对指定元素的readonly属性进行移除，通过name定位
    Execute Javascript    document.getElementsByName('${name}')[0].removeAttribute('readonly')

JS追加html
    [Arguments]    ${id_name}    ${html}
    [Documentation]    根据元素属性id值，再该元素后面插入html代码块
    Execute Javascript    var html = document.getElementById("${id_name}").innerHTML;document.getElementById('${id_name}').innerHTML='${html}'+html;

打开浏览器
    [Arguments]    ${url}    ${browser_name}=headlesschrome
    [Documentation]    传入url、可选参数浏览器名称
    ...
    ...    打开浏览器并窗口最大化，默认打开谷歌浏览器
    ...
    ...    若使用非GUI则需要将chrome值改为headlesschrome
    ...
    ...    目前针对其他浏览器底层没有做更多扩展，到时需要测试时额外再根据相应驱动进行开发即可，修改webdrivertools.py文件
    Open Browser    ${url}    ${browser_name}
    Maximize Browser Window

关闭浏览器
    [Arguments]    ${time}=0.5
    [Documentation]    关闭所有窗口，默认延迟0.5秒关闭
    Sleep    ${time}
    Close All Browsers

随机点击列表元素
    [Arguments]    ${loc}    ${time}=0.5
    [Documentation]    传入元素列表位置、可选参数time
    ...
    ...    随机选取元素列表中一个元素进行点击操作，点击默认延迟0.5秒
    Wait Until Element Is Visible    ${loc}
    Sleep    ${time}
    Random Click Webelements    ${loc}

指定下标点击列表元素
    [Arguments]    ${loc}    ${index}
    [Documentation]    传入元素列表位置、下标index（整型）
    ...
    ...    对元素列表中元素进行点击操作（根据传入index决定点击第几个，传入0代表点击第一个）
    ${list}    获取元素列表    ${loc}
    点击元素    ${list}[${index}]

获取元素列表
    [Arguments]    ${loc}    ${time}=0.5
    [Documentation]    传入元素列表位置、可选参数【time】
    ...
    ...    获取元素列表数据，可以通过${loc}[0]，获取第一个，依次类推，默认延迟0.5秒
    Wait Until Element Is Visible    ${loc}
    Sleep    ${time}
    ${elements}    Get WebElements    ${loc}
    [Return]    ${elements}

断言元素列表不为空
    [Arguments]    ${lo}
    [Documentation]    传入元素列表位置
    ...
    ...    断言元素列表中数据不为空
    ${list}    获取元素列表    ${lo}
    ${len}    Evaluate    len($list)
    Should Be True    ${len}>0

鼠标移动在元素上
    [Arguments]    ${loc}    ${time}=0.5
    [Documentation]    传入元素位置、可选参数【time】
    ...
    ...    模拟鼠标放到元素上面，默认延迟0.5秒
    Wait Until Element Is Visible    ${loc}
    Sleep    ${time}
    Mouse Over    ${loc}

鼠标随机移动到列表元素上
    [Arguments]    ${loc}    ${time}=0.5
    [Documentation]    传入元素列表位置、可选参数【time】
    ...
    ...    模拟鼠标随机放到元素列表中一个元素上面，默认延迟0.5秒
    Wait Until Element Is Visible    ${loc}
    Sleep    ${time}
    Random Mouse Overs    ${loc}

选择窗口
    [Arguments]    ${loc}    ${time}=0.5
    [Documentation]    使用原生选择窗口，额外增加选择前等待时间
    Sleep    ${time}
    Select Window    ${loc}

断言url
    [Arguments]    ${text}
    [Documentation]    调用底层原生接口
    Location Should Contain    ${text}

返回上一页
    [Arguments]    ${time}=0.5
    [Documentation]    默认等待1秒后进行浏览器返回操作
    Sleep    ${time}
    Go Back

断言text正确
    [Arguments]    ${loc}    ${text}
    [Documentation]    传入元素位置、【text】
    ...
    ...    断言指定位置元素text值是否包含传入的${text}
    Wait Until Elements Text Contain    ${loc}    ${text}
    Element Should Contain    ${loc}    ${text}

切换iframe
    [Arguments]    ${lo}    ${time}=0.5
    [Documentation]    传入元素位置、可选参数【time】
    ...
    ...    进入元素位置所在frame，默认延迟1秒等待下一步操作
    Wait Until Element Is Visible    ${lo}
    Select Frame    ${lo}
    Sleep    ${time}
