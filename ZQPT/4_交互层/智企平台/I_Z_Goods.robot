*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Keywords ***
I_Z_Goods_断言title
    Location Should Contain    goods

I_Z_Goods_断言商品名称
    [Arguments]    ${goods_name}
    断言text正确    //h3[@class="pl24"]    ${goods_name}

I_Z_Goods_点击购买数量加
    点击元素    //span[@class="operation-item add"]

I_Z_Goods_点击立即购买
    点击元素    //div[contains(text(),"立即购买")]

I_Z_Goods_点击加入购物车
    点击元素    //div[contains(text(),"加入购物车")]

I_Z_Goods_点击电话咨询
    点击元素    //a[@class="inputNumber"]

I_Z_Goods_断言电话咨询页打开
    Wait Until Element Is Visible    //div[@type="page"]
    Element Should Be Visible    //div[@type="page"]

I_Z_Goods_关闭电话咨询
    点击元素    //span[@class="layui-layer-setwin"]

I_Z_Goods_点击在线客服
    点击元素    //a[text()='在线客服']

I_Z_Goods_断言在线客服打开
    Wait Until Element Is Visible    //iframe[@name="chat"]
    Element Should Be Visible    //iframe[@name="chat"]

I_Z_Goods_切换到在线客服frame
    切换iframe    //iframe[@name="chat"]

I_Z_Goods_关闭在线客服
    点击元素    //span[@type="hide-white"]
    Unselect Frame

I_Z_Goods_点击企服知识
    点击元素    //div[text()='企服知识']

I_Z_Goods_断言企服知识列表有数据
    断言元素列表不为空    //ul[@class="qifu_list"]/li

I_Z_Goods_断言点击加入购物车成功
    断言text正确    //div[@id="box-tip-x"]/p    商品已成功添加到购物车！

I_Z_Goods_点击关闭购物车成功弹框
    点击元素    //div[@id="box-tip-x"]/div/span

I_Z_Goods_点击去购物车结算
    点击元素    //button[text()='去购物车结算']

I_Z_Goods_点击继续逛逛
    点击元素    //button[text()='继续逛逛']

I_Z_Goods_点击咨询
    点击元素    //div[text()='咨询']
