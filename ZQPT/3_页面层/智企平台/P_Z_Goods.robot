*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Goods.robot
Resource          P_Z_Home.robot

*** Keywords ***
P_Z_Goods_断言商品名称
    [Arguments]    ${goods_name}
    I_Z_Goods_断言商品名称    ${goods_name}

P_Z_Goods_点击购买数量加
    I_Z_Goods_点击购买数量加

P_Z_Goods_点击立即购买
    I_Z_Goods_点击立即购买

P_Z_Goods_点击加入购物车
    I_Z_Goods_点击加入购物车
    I_Z_Goods_断言点击加入购物车成功

P_Z_Goods_点击去购物车结算
    I_Z_Goods_点击去购物车结算

P_Z_Goods_点击继续逛逛
    I_Z_Goods_点击继续逛逛

P_Z_Goods_点击关闭购物车成功弹框
    I_Z_Goods_点击关闭购物车成功弹框

P_Z_Goods_点击电话咨询
    I_Z_Goods_点击电话咨询

P_Z_Goods_断言电话咨询页打开并关闭
    I_Z_Goods_断言电话咨询页打开
    I_Z_Goods_关闭电话咨询

P_Z_Goods_点击在线客服
    I_Z_Goods_点击在线客服

P_Z_Goods_断言在线客服打开并关闭
    I_Z_Goods_断言在线客服打开
    I_Z_Goods_切换到在线客服frame
    I_Z_Goods_关闭在线客服

P_Z_Goods_点击企服知识
    I_Z_Goods_点击企服知识

P_Z_Goods_断言企服知识列表有数据
    I_Z_Goods_断言企服知识列表有数据

P_Z_Goods_搜索商品点击进入商品详情
    [Arguments]    ${goods_name}
    P_Z_Home_输入商品名称并点击搜索    ${goods_name}
    I_Z_Home_断言搜索页被打开
    P_Z_Home_点击搜索页商品名称    ${goods_name}

P_Z_Goods_断言点击加入购物车成功
    I_Z_Goods_断言点击加入购物车成功
