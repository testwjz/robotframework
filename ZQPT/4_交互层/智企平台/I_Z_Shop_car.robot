*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Shop_car_断言购物车存在
    断言text正确    //div[@class="header_title_wrap"]//strong    购物车

I_Z_Shop_car_断言购物车为空
    断言text正确    //div[@class="no_cart_wrap"]//a    去购物

I_Z_Shop_car_点击去结算
    点击元素    //div[@class="calBtn zq-md"]/a

I_Z_Shop_car_点击顶部全选复选框
    点击元素    //div[@class="cartMain_hd"]//label

I_Z_Shop_car_点击商品复选框
    [Arguments]    ${index}
    指定下标点击列表元素    //ul[@class="cartBox_wrap"]//label    ${index}

I_Z_Shop_car_点击商品数量加
    [Arguments]    ${index}
    指定下标点击列表元素    //a[@class="plus"]    ${index}

I_Z_Shop_car_点击商品数量减
    [Arguments]    ${index}
    指定下标点击列表元素    //a[@class="reduce reSty"]    ${index}

I_Z_Shop_car_点击商品删除
    [Arguments]    ${index}
    指定下标点击列表元素    //a[@class="del_cart_btn"]    ${index}

I_Z_Shop_car_点击删除弹框确定或取消
    [Arguments]    ${button_name}
    点击元素    //div[@id="del_cart_wrap"]//button[text()='${button_name}']

I_Z_Shop_car_断言弹框报错
    [Arguments]    ${str}
    断言text正确    //div[@type="dialog"]/div    ${str}

I_Z_Shop_car_点击底部全选复选框
    点击元素    //div[@class="bar-wrapper"]//label

I_Z_Shop_car_点击批量删除选中产品
    点击元素    //div[@class="del_choose_carts"]

I_Z_Shop_car_断言商品选中数量正确
    [Arguments]    ${num}
    断言text正确    //strong[@class="piece_num"]    ${num}

I_Z_Shop_car_点击去购物
    点击元素    //a[text()="去购物>"]
