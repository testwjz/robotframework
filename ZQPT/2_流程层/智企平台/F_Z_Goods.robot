*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Goods.robot
Resource          ../../3_页面层/智企平台/P_Z_Order.robot
Resource          ../../3_页面层/智企平台/P_Z_Shop_car.robot
Resource          F_Z_Home.robot

*** Keywords ***
F_Z_Goods_打开浏览器进入商品详情
    [Arguments]    ${url}    ${goods_name}
    F_Z_Home_打开浏览器并断言    ${url}
    P_Z_Goods_搜索商品点击进入商品详情    ${goods_name}
    P_Z_Goods_断言商品名称    ${goods_name}

F_Z_Goods_直接点击立即购买
    P_Z_Goods_点击立即购买
    P_Z_Order_断言结算页存在并返回上一页

F_Z_Goods_增加商品数量后点击立即购买
    [Arguments]    ${num}
    FOR    ${i}    IN RANGE    ${num}
        P_Z_Goods_点击购买数量加
    P_Z_Goods_点击立即购买
    P_Z_Order_断言结算页存在并返回上一页

F_Z_Goods_点击加入购物车
    P_Z_Goods_点击加入购物车
    P_Z_Goods_断言点击加入购物车成功
    P_Z_Goods_点击关闭购物车成功弹框

F_Z_Goods_点击去购物车结算
    P_Z_Goods_点击加入购物车
    P_Z_Goods_断言点击加入购物车成功
    P_Z_Goods_点击去购物车结算
    P_Z_Shorp_car_断言购物车存在并返回上一页

F_Z_Goods_点击继续逛逛
    P_Z_Goods_点击加入购物车
    P_Z_Goods_断言点击加入购物车成功
    P_Z_Goods_点击继续逛逛

F_Z_Goods_点击电话咨询
    P_Z_Goods_点击电话咨询
    P_Z_Goods_断言电话咨询页打开并关闭

F_Z_Goods_点击在线客服
    P_Z_Goods_点击在线客服
    P_Z_Goods_断言在线客服打开并关闭

F_Z_Goods_点击企服知识
    P_Z_Goods_点击企服知识
    P_Z_Goods_断言企服知识列表有数据

F_Z_Goods_搜索商品并选购1件加入购物车
    [Arguments]    ${goods_name}
    P_Z_Goods_搜索商品点击进入商品详情    ${goods_name}
    P_Z_Goods_断言商品名称    ${goods_name}
    P_Z_Goods_点击加入购物车
    P_Z_Goods_断言点击加入购物车成功
    P_Z_Goods_点击去购物车结算
    P_Z_Shorp_car_断言购物车存在
    P_Z_Shorp_car_断言商品选中数量正确    1
