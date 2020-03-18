*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Aboutus_断言title存在
    [Arguments]    ${text}
    断言text正确    //div[@class="common-banner"]/h1    ${text}

I_Z_Aboutus_断言顶呱呱集团发展史存在
    断言text正确    //div[@class="f-artical"]//div[@class="ab-title"]    顶呱呱集团发展史

I_Z_Aboutus_断言顶呱呱集团布局存在
    断言text正确    //div[@class="s-artical"]//div[@class="ab-title"]    顶呱呱集团布局

I_Z_Aboutus_点击banner菜单
    [Arguments]    ${banner_name}
    点击元素    //div[@class="nav"]/a[text()='${banner_name}']

I_Z_Aboutus_断言发展历程存在
    断言text正确    //div[@class="module-title"]    发展历程

I_Z_Aboutus_断言企业荣誉存在
    断言text正确    //div[@class="module-title"]    企业荣誉

I_Z_Aboutus_断言顶呱呱核心理念存在
    断言text正确    //section[@class="core-idea"]//div[@class="title"]//h6    顶呱呱核心理念

I_Z_Aboutus_断言分公司联系方式存在
    断言text正确    //div[@class="module-title"]    分公司联系方式
