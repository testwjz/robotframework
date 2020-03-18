*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Product_点击为你推荐商品名称
    随机点击列表元素    //div[@class="recommend"]//li/a

I_Z_Product_点击为你推荐立即购买
    随机点击列表元素    //div[@class="recommend"]//strong[text()='立即购买']

I_Z_Product_点击列表二级分类名称
    随机点击列表元素    //div[@class="top-title"]//h4/span

I_Z_Product_点击列表二级分类背景图片
    随机点击列表元素    //div[@class="top-title"]//a

I_Z_Product_点击列表一级分类logo
    随机点击列表元素    //div[@class="left-explain"]//img[@class="logo-img"]

I_Z_Product_点击列表一级分类bg
    随机点击列表元素    //div[@class="left-explain"]//a

I_Z_Product_点击列表商品名称
    随机点击列表元素    //div[@class="index-recommend"]//li/a

I_Z_Product_点击列表商品立即购买
    随机点击列表元素    //div[@class="index-recommend"]//strong[text()='立即购买']

I_Z_Product_点击banner一级分类
    随机点击列表元素    //ul[@class="business-classify"]/li/h6/a

I_Z_Product_点击banner一级分类下商品
    [Documentation]    由于界面做的不够完善，只能随机选取一级分类下第一个商品进行点击
    指定下标点击列表元素    //ul[@class="business-classify"]/li/div/a    0

I_Z_Product_鼠标放到banner一级分类上
    鼠标随机移动到列表元素上    //ul[@class="business-classify"]/li/h6/a

I_Z_Product_点击banner右二级分类
    随机点击列表元素    //div[@class="show-list"]//ul[not(@style='display: none;')]//h6/a

I_Z_Product_点击banner右商品
    随机点击列表元素    //div[@class="show-list"]//ul[not(@style='display: none;')]//div/a

I_Z_Product_断言为你推荐存在
    断言text正确    //div[@class="index-products"]//div/h6    为您推荐
