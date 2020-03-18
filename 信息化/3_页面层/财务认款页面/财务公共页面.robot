*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
私有_进入财务页面
    [Arguments]    ${页面}
    点击财务头部菜单
    点击一级菜单    3.0财务中心
    点击二级菜单    新认款管理
    点击三级菜单    ${页面}
