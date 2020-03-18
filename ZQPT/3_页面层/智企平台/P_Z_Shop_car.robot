*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Shop_car.robot
Resource          ../../4_交互层/智企平台/I_Z_Home.robot

*** Keywords ***
P_Z_Shorp_car_断言购物车存在并回到首页
    I_Z_Shop_car_断言购物车存在
    I_Z_Home_点击顶部菜单    平台首页

P_Z_Shorp_car_断言购物车存在
    I_Z_Shop_car_断言购物车存在

P_Z_Shorp_car_断言购物车存在并返回上一页
    I_Z_Shop_car_断言购物车存在
    返回上一页

P_Z_Shorp_car_断言购物车为空
    I_Z_Shop_car_断言购物车为空

P_Z_Shorp_car_点击去购物
    I_Z_Shop_car_点击去购物

P_Z_Shorp_car_点击去结算
    I_Z_Shop_car_点击去结算

P_Z_Shorp_car_点击顶部全选复选框
    I_Z_Shop_car_点击顶部全选复选框

P_Z_Shorp_car_点击底部全选复选框
    I_Z_Shop_car_点击底部全选复选框

P_Z_Shorp_car_点击商品复选框
    [Arguments]    ${index}
    I_Z_Shop_car_点击商品复选框    ${index}

P_Z_Shorp_car_点击商品数量加
    [Arguments]    ${index}
    I_Z_Shop_car_点击商品数量加    ${index}

P_Z_Shorp_car_点击商品数量减
    [Arguments]    ${index}
    I_Z_Shop_car_点击商品数量减    ${index}

P_Z_Shorp_car_点击商品删除
    [Arguments]    ${index}
    I_Z_Shop_car_点击商品删除    ${index}

P_Z_Shorp_car_点击删除弹框确定
    I_Z_Shop_car_点击删除弹框确定或取消    确定

P_Z_Shorp_car_点击删除弹框取消
    I_Z_Shop_car_点击删除弹框确定或取消    取消

P_Z_Shorp_car_断言弹框报错
    [Arguments]    ${str}
    I_Z_Shop_car_断言弹框报错    ${str}

P_Z_Shorp_car_点击批量删除选中产品
    I_Z_Shop_car_点击批量删除选中产品

P_Z_Shorp_car_断言商品选中数量正确
    [Arguments]    ${num}
    I_Z_Shop_car_断言商品选中数量正确    ${num}
