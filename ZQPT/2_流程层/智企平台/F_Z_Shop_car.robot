*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Shop_car.robot
Resource          ../../3_页面层/智企平台/P_Z_Order.robot
Resource          F_Z_Goods.robot

*** Keywords ***
F_Z_Shop_car_打开浏览器并选购1件商品
    [Arguments]    ${url}    ${goods_name}
    F_Z_Home_打开浏览器并断言    ${url}
    F_Z_Goods_搜索商品并选购1件加入购物车    ${goods_name}

F_Z_Shop_car_点击去结算
    P_Z_Shorp_car_点击去结算
    P_Z_Order_断言结算页存在并返回上一页

F_Z_Shop_car_点击商品删除并确定
    [Arguments]    ${goods_name}    ${index}=0
    P_Z_Shorp_car_点击商品删除    ${index}
    P_Z_Shorp_car_点击删除弹框确定
    P_Z_Shorp_car_断言购物车为空
    P_Z_Shorp_car_点击去购物
    F_Z_Goods_搜索商品并选购1件加入购物车    ${goods_name}

F_Z_Shop_car_点击商品删除并取消
    [Arguments]    ${index}=0    ${num}=1
    P_Z_Shorp_car_点击商品删除    ${index}
    P_Z_Shorp_car_点击删除弹框取消
    P_Z_Shorp_car_断言商品选中数量正确    ${num}

F_Z_Shop_car_点击批量删除选中产品并确定
    [Arguments]    ${goods_name}
    P_Z_Shorp_car_点击批量删除选中产品
    P_Z_Shorp_car_点击删除弹框确定
    P_Z_Shorp_car_断言购物车为空
    P_Z_Shorp_car_点击去购物
    F_Z_Goods_搜索商品并选购1件加入购物车    ${goods_name}

F_Z_Shop_car_点击批量删除选中产品并取消
    [Arguments]    ${num}=1
    P_Z_Shorp_car_点击批量删除选中产品
    P_Z_Shorp_car_点击删除弹框取消
    P_Z_Shorp_car_断言商品选中数量正确    ${num}

F_Z_Shop_car_点击顶部全选复选框
    [Arguments]    ${num}=0
    P_Z_Shorp_car_点击顶部全选复选框
    P_Z_Shorp_car_断言商品选中数量正确    ${num}
    P_Z_Shorp_car_点击顶部全选复选框

F_Z_Shop_car_点击底部全选复选框
    [Arguments]    ${num}=0
    P_Z_Shorp_car_点击底部全选复选框
    P_Z_Shorp_car_断言商品选中数量正确    ${num}
    P_Z_Shorp_car_点击底部全选复选框

F_Z_Shop_car_点击商品复选框
    [Arguments]    ${num}=0    ${index}=0
    P_Z_Shorp_car_点击商品复选框    ${index}
    P_Z_Shorp_car_断言商品选中数量正确    ${num}
    P_Z_Shorp_car_点击商品复选框    ${index}

F_Z_Shop_car_点击商品数量加
    [Arguments]    ${num}=2    ${index}=0
    P_Z_Shorp_car_点击商品数量加    ${index}
    P_Z_Shorp_car_断言商品选中数量正确    ${num}
    P_Z_Shorp_car_点击商品数量减    ${index}

F_Z_Shop_car_点击商品数量减
    [Arguments]    ${str}    ${index}=0
    P_Z_Shorp_car_点击商品数量减    ${index}
    P_Z_Shorp_car_断言弹框报错    ${str}
